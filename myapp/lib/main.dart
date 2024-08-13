import 'package:flutter/material.dart';
import 'package:myapp/screen/chat_page.dart';
import 'package:myapp/screen/counter_stateful_demo.dart';
import 'package:myapp/screen/home_page.dart';
import 'package:myapp/screen/login_page.dart';
import 'package:myapp/screen/onboarding_screen.dart';
import 'package:myapp/screen/onboarding_screen_test.dart';
import 'package:myapp/screen/splash_screen.dart';
import 'package:myapp/screen/welcome_screen.dart';

void main() {
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
      home: OnboardingScreen(),
      // home: CounterStateful(buttonColor: Colors.blue),
    );
  }
}
