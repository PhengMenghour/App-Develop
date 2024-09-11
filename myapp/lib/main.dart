import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myapp/screen/create_account_screen.dart';
import 'package:myapp/screen/create_pin_screen.dart';
import 'package:myapp/screen/fill_info_screen.dart';
import 'package:myapp/screen/home_page.dart';
import 'package:myapp/screen/login_screen.dart';
import 'package:myapp/screen/login_to_account_screen.dart';
import 'package:myapp/screen/onboarding_screen.dart';
import 'package:myapp/screen/splash_screen.dart';
import 'package:myapp/screen/welcome_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 83, 5, 218)),
        useMaterial3: true,
      ),
      // debugShowCheckedModeBanner: false
      // "/" : (context) => OnboardingScreen()

      // home: OnboardingScreenTest(),
      home: const FillInfoScreen(),
      // home: CounterStateful(buttonColor: Colors.blue),
    );
  }
}
