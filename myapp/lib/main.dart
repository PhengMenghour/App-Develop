import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myapp/screen/chat_page.dart';
import 'package:myapp/screen/counter_stateful_demo.dart';
import 'package:myapp/screen/create_account_screen.dart';
import 'package:myapp/screen/home_page.dart';
import 'package:myapp/screen/login_page.dart';
import 'package:myapp/screen/login_screen.dart';
import 'package:myapp/screen/onboarding_screen.dart';
import 'package:myapp/screen/splash_screen.dart';
import 'package:myapp/screen/welcome_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAdTCjOFPE-98HNJNSZxDe2GhIUU7eg7mU",
            authDomain: "ecommerce-1e01a.firebaseapp.com",
            projectId: "ecommerce-1e01a",
            storageBucket: "ecommerce-1e01a.appspot.com",
            messagingSenderId: "455321813959",
            appId: "1:455321813959:web:e038989d1dcf8b76150fe2",
            measurementId: "G-QT9WT4PMBY"));
  } else {
    await Firebase.initializeApp();
  }

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
      home: const CreateAccountScreen(),
      // home: CounterStateful(buttonColor: Colors.blue),
    );
  }
}
