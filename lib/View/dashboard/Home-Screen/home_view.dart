import 'package:flutter/material.dart';
import 'package:mosque_tracer/generated/assets.dart';
import 'package:mosque_tracer/utils/colors.dart';
import 'package:mosque_tracer/utils/text_style.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
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
                    top: size.height * 0.1),
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
                    PrayerTimeWidget(
                        size: size, prefixText: 'Fajr', suffixTxt: '05:15 AM'),
                    PrayerTimeWidget(
                        size: size, prefixText: 'Dhuhr', suffixTxt: '12:03 PM'),
                    PrayerTimeWidget(
                        size: size, prefixText: 'Asr', suffixTxt: '03:05 PM'),
                    PrayerTimeWidget(
                        size: size, prefixText: 'Maghrib', suffixTxt: '05:28 PM'),
                    PrayerTimeWidget(
                        size: size, prefixText: 'Isha', suffixTxt: '05:15 AM'),
                    PrayerTimeWidget(
                        size: size,
                        prefixText: 'Jumma Mubarak',
                        suffixTxt: '01:30 PM'),
                    SizedBox(height: size.height * 0.1),
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
                            onPressed: () {},
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const SizedBox.shrink(),
                                Text('Mosque near you',
                                    style: InterStyle.w600f16Black),
                                const Icon(Icons.arrow_forward, color: kPrimaryColor)
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
