import 'package:flutter/material.dart';
import 'package:mosque_tracer/generated/assets.dart';
import 'package:mosque_tracer/utils/colors.dart';
import 'package:mosque_tracer/utils/text_style.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width*0.04,vertical: size.height*0.02),
          child: Column(
            children: [
              PrayerTimeWidget(size: size, prefixText: 'Fajr', suffixTxt: '05:15 AM'),
              PrayerTimeWidget(size: size, prefixText: 'Dhuhr', suffixTxt: '12:03 PM'),
              PrayerTimeWidget(size: size, prefixText: 'Asr', suffixTxt: '03:05 PM'),
              PrayerTimeWidget(size: size, prefixText: 'Maghrib', suffixTxt: '05:28 PM'),
              PrayerTimeWidget(size: size, prefixText: 'Isha', suffixTxt: '05:15 AM'),
              PrayerTimeWidget(size: size, prefixText: 'Jumma Mubarak', suffixTxt: '01:30 PM'),
              
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: kPrimaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                          side: BorderSide.none
                        )
                      ),
                        onPressed: (){},
                        child: Text('Mosque near you',style: InterStyle.w600f16Black),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PrayerTimeWidget extends StatelessWidget {
  const PrayerTimeWidget({
    super.key,
    required this.size, required this.prefixText, required this.suffixTxt,
  });

  final Size size;
  final String prefixText,suffixTxt;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: size.width*0.02),
      margin: EdgeInsets.symmetric(vertical: size.height*0.01),
      height: size.height*0.06,
      decoration: BoxDecoration(
        color: Colors.grey.shade400,
        borderRadius: BorderRadius.circular(50)
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(Assets.imagesFajr,height: 30),
          SizedBox(width: size.width*0.02),
          Text(prefixText,style: InterStyle.w600f16Black),
          const Spacer(),
          Text(suffixTxt,style: InterStyle.w600f16Black)
        ],
      ),
    );
  }
}
