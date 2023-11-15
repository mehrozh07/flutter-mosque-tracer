import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mosque_tracer/View/auth-screens/login_view.dart';
import 'package:mosque_tracer/View/dashboard/Home-Screen/nearby_mosque.dart';
import 'package:mosque_tracer/generated/assets.dart';
import 'package:mosque_tracer/model-view/auth-notifier.dart';
import 'package:mosque_tracer/model-view/prayer-time-bloc/prayer_timing_bloc.dart';
import 'package:mosque_tracer/utils/colors.dart';
import 'package:mosque_tracer/utils/error_message.dart';
import 'package:mosque_tracer/utils/text_style.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  final prayerTimingBloc = PrayerTimingBloc();

  @override
  void initState() {
    prayerTimingBloc.add(PrayerTimingDone('Pakistan', 'Lahore'));
    final authNotifier = Provider.of<AuthNotifier>(context,listen: false);
    authNotifier.setPickupBitMap(context);
    super.initState();
  }

  @override
  void dispose() {
    prayerTimingBloc.close();
    super.dispose();
  }

  String? selectedCity = "Lahore";
  // List<String> cities = ["Karachi", "Lahore", "Islamabad", "Rawalpindi"];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final authNotifier = Provider.of<AuthNotifier>(context);
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
            top: size.height * 0.07,
            right: 0,
            left: 0,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: size.width * 0.04,),
                  child: Text('Mosque Tracer', style: InterStyle.w600f16White),
                ),
                IconButton(
                    onPressed: () async{
                     await authNotifier.signOut().then((value){
                       Navigator.popUntil(context, (route) => route.isFirst);
                       PersistentNavBarNavigator.pushNewScreen(
                         context,
                         screen: LoginView(),
                         withNavBar: false,
                         pageTransitionAnimation: PageTransitionAnimation.cupertino,
                       );
                     });
                    },
                    icon: const Icon(Icons.logout,color: Colors.white)),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              height: size.height * 0.8,
              width: size.width,
              padding: EdgeInsets.only(
                  left: size.width * 0.04,
                  right: size.width * 0.04,
                  top: size.height * 0.03),
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                color: Colors.grey.shade50,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                ),
              ),
              child: Column(
                children: [
                  BlocConsumer<PrayerTimingBloc, PrayerTimingState>(
                    bloc: prayerTimingBloc,
                    listener: (context, state) {},
                    builder: (context, state) {
                      if(state is PrayerTimingLoading){
                        return const Center(
                          child: CircularProgressIndicator(
                            strokeWidth: 2
                          )
                        );
                      }
                      if(state is PrayerTimingError){
                        return Text(state.error);
                      }
                      if(state is PrayerTimingLoaded){
                        final data = state.prayerTimingModel.timings;
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('${state.prayerTimingModel.date?.hijri?.day}',style: InterStyle.w700f26Primary),
                            ListTile(
                              dense: true,
                              visualDensity: const VisualDensity(horizontal: -4,vertical: -4),
                              contentPadding: EdgeInsets.zero,
                              title: Text('${state.prayerTimingModel.date?.hijri?.month?.en} ${state.prayerTimingModel.date?.hijri?.year}',
                                  style: InterStyle.w600f16Primary),
                              subtitle: Text('${state.prayerTimingModel.date?.gregorian?.weekday?.en}'
                                  ' ${state.prayerTimingModel.date?.gregorian?.day} ${state.prayerTimingModel.date?.gregorian?.month?.en} '
                                  '${state.prayerTimingModel.date?.gregorian?.year}'),
                              trailing:  Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('$selectedCity',style: InterStyle.w600f16Black),
                                  PopupMenuButton<String>(
                                    initialValue: selectedCity,
                                    padding: EdgeInsets.zero,
                                    icon: const Icon(Icons.edit_location_sharp),
                                    onSelected: (String newValue) {
                                      setState(() {
                                        selectedCity = newValue;
                                      });
                                      debugPrint('Selected city is ===> $selectedCity');
                                      prayerTimingBloc.add(PrayerTimingDone('Pakistan', '$selectedCity'));
                                    },
                                    itemBuilder: (context) {
                                      return Utils.cities.map((String city) {
                                        return PopupMenuItem<String>(
                                          value: city,
                                          child: Text(city,style: InterStyle.w600f16Black),
                                        );
                                      }).toList().cast();
                                    },
                                  ),
                                ],
                              )
                            ),
                            PrayerTimeWidget(
                                size: size,
                                prefixText: 'Fajr',
                                suffixTxt: '${data?.fajr} AM'),
                            PrayerTimeWidget(
                                size: size,
                                prefixText: 'Dhuhr',
                                suffixTxt: '${data?.dhuhr} PM'),
                            PrayerTimeWidget(
                                size: size,
                                prefixText: 'Asr',
                                suffixTxt: '${data?.asr} PM'),
                            PrayerTimeWidget(
                                size: size,
                                prefixText: 'Maghrib',
                                suffixTxt: '${data?.maghrib} PM'),
                            PrayerTimeWidget(
                                size: size,
                                prefixText: 'Isha',
                                suffixTxt: '${data?.isha} AM'),
                            // PrayerTimeWidget(
                            //     size: size,
                            //     prefixText: 'Jumma Mubarak',
                            //     suffixTxt: '${data.j} PM'),
                          ],
                        );
                      }
                      return const SizedBox.shrink();
                    },
                  ),
                  SizedBox(height: size.height * 0.04),
                  Row(
                    children: [
                      Expanded(
                        child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.grey.shade400,
                              minimumSize:
                                  Size(double.infinity, size.height * 0.06),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  side: BorderSide.none)),
                          onPressed: () {
                            PersistentNavBarNavigator.pushNewScreen(
                              context,
                              screen: const NearByMosque(),
                              withNavBar: true,
                              pageTransitionAnimation:
                                  PageTransitionAnimation.cupertino,
                            );
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox.shrink(),
                              Text('Mosque near you',
                                  style: InterStyle.w600f16Black),
                              const Icon(Icons.arrow_forward,
                                  color: kPrimaryColor)
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

}

class PrayerTimeWidget extends StatelessWidget {
  const PrayerTimeWidget({
    super.key,
    required this.size,
    required this.prefixText,
    required this.suffixTxt,
  });

  final Size size;
  final String prefixText, suffixTxt;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
      margin: EdgeInsets.symmetric(vertical: size.height * 0.01),
      height: size.height * 0.06,
      decoration: BoxDecoration(
          color: Colors.grey.shade400, borderRadius: BorderRadius.circular(50)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(Assets.imagesFajr, height: 30),
          SizedBox(width: size.width * 0.02),
          Text(prefixText, style: InterStyle.w600f16Black),
          const Spacer(),
          Text(suffixTxt, style: InterStyle.w600f16Black)
        ],
      ),
    );
  }
}
