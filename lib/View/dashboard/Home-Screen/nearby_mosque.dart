import 'dart:async';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mosque_tracer/model-view/auth-notifier.dart';
import 'package:mosque_tracer/utils/text_style.dart';
import 'package:provider/provider.dart';

class NearByMosque extends StatefulWidget {
  const NearByMosque({super.key});

  @override
  State<NearByMosque> createState() => _NearByMosqueState();
}

class _NearByMosqueState extends State<NearByMosque> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  void initState() {
    _determinePosition();
    final authNotifier = Provider.of<AuthNotifier>(context,listen: false);
    authNotifier.getCurrentLocation();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final authNotifier = Provider.of<AuthNotifier>(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Stack(
          children: [
            Positioned(
              top: size.height * 0.04,
              right: 0,
              left: 0,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox.shrink(),
                  Text('Mosque near you', style: InterStyle.w600f16Black),
                  Padding(
                    padding: EdgeInsets.only(right: size.width * 0.032),
                    child: const Icon(Icons.arrow_forward_outlined),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                height: size.height * 0.75,
                width: double.infinity,
                alignment: Alignment.topCenter,
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
                decoration: BoxDecoration(
                  color: Colors.grey.shade50,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Map', style: InterStyle.w600f16Black),
                    const SizedBox(height: 12),
                    Container(
                      width: double.infinity,
                      height: size.height * 0.3,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                        authNotifier.position != null?
                        GoogleMap(
                            mapType: MapType.normal,
                            compassEnabled: true,
                            myLocationButtonEnabled: true,
                            myLocationEnabled: true,
                            initialCameraPosition: _kGooglePlex,
                            onMapCreated: (GoogleMapController controller) {
                              _controller.complete(controller);
                              _determinePosition();
                              controller.animateCamera(
                                  CameraUpdate.newCameraPosition(
                                      CameraPosition(target: LatLng(
                                          authNotifier.position!.latitude,
                                          authNotifier.position!.longitude,
                                      ),
                                          tilt: 59.440717697143555,
                                          zoom: 19.151926040649414,
                                          bearing: 192.8334901395799,
                                      )));
                            },
                          ) : const Center(child: CircularProgressIndicator()),
                          // Transform.scale(
                          //   scale: 0.7,
                          //   child: IconButton(
                          //     style: IconButton.styleFrom(
                          //       backgroundColor: Theme.of(context).primaryColor,
                          //       shape: const CircleBorder(),
                          //     ),
                          //       onPressed: _determinePosition,
                          //       icon: const Icon(Icons.location_searching,color: Colors.white),
                          //   ),
                          // )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    return await Geolocator.getCurrentPosition();
  }
}
