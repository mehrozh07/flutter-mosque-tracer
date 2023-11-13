import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mosque_tracer/View/auth-screens/login_view.dart';
import 'package:mosque_tracer/generated/assets.dart';
import 'package:mosque_tracer/utils/colors.dart';
import 'package:mosque_tracer/utils/main_screen.dart';
import 'package:mosque_tracer/utils/text_style.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
  Timer(const Duration(seconds: 3), () {
    if(FirebaseAuth.instance.currentUser != null){
      Navigator.popUntil(context, (route) => route.isFirst);
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=> const MainScreen()));
    }else{
      Navigator.popUntil(context, (route) => route.isFirst);
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=> LoginView()));
    }
  });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset(Assets.imagesMosqueLogo)),
          Text('Mosque Tracer',
              textAlign: TextAlign.center,
              style: InterStyle.w900f26White),
          Text('Navigate you to closest Mosque',
              textAlign: TextAlign.center,
              style: InterStyle.w700f18White)
        ],
      ),
    );
  }
}
