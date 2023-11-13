import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mosque_tracer/View/splash-view/splash_view.dart';
import 'package:mosque_tracer/firebase_options.dart';
import 'package:mosque_tracer/model-view/auth-notifier.dart';
import 'package:mosque_tracer/utils/colors.dart';
import 'package:mosque_tracer/utils/main_screen.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  Bloc.observer = MyBlockObserver();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
    SystemUiOverlay.bottom,
    SystemUiOverlay.top,
  ]);
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => AuthNotifier())],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mosque Tracer',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: kPrimaryColor),
        useMaterial3: true,
      ),
    );
  }
}


class MyBlockObserver extends BlocObserver {
  @override
  void onCreate(BlocBase<dynamic> bloc) {
    log("Bloc create at $bloc");
    super.onCreate(bloc);
  }

  @override
  void onClose(BlocBase<dynamic> bloc) {
    log("Bloc close at $bloc");
    super.onClose(bloc);
  }

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    log("Bloc change at $bloc: $change");
    super.onChange(bloc, change);
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log("Bloc error at $bloc: Error:$error: stack trace:$stackTrace");
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onTransition(
      Bloc<dynamic, dynamic> bloc, Transition<dynamic, dynamic> transition) {
    log("Bloc transition at $bloc: $transition");
    super.onTransition(bloc, transition);
  }
}