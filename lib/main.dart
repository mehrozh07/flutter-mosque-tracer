import 'package:flutter/material.dart';
import 'package:mosque_tracer/View/auth-screens/login_view.dart';
import 'package:mosque_tracer/View/splash-view/splash_view.dart';
import 'package:mosque_tracer/model-view/auth-notifier.dart';
import 'package:mosque_tracer/utils/colors.dart';
import 'package:mosque_tracer/utils/main_screen.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_)=> AuthNotifier())
  ],
  child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mosque Tracer',
      debugShowCheckedModeBanner: false,
      home: const MainScreen(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: kPrimaryColor),
        useMaterial3: true,
      ),
    );
  }
}
