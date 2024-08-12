import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:myapp/screen/welcome_screen.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.network(
        'https://www.kindpng.com/picc/m/68-682794_art-plant-logo-leaf-png-transparent-png.png',
        width: 300,
        height: 300,
      ),
      title: Text(
        'Welcome',
        style: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: Colors.green,
        ),
      ),
      backgroundColor: Colors.white,
      showLoader: true,
      loadingText: Text('Loading...'),
      navigator: WelcomeScreen(),
      durationInSeconds: 5,
      loaderColor: Colors.green,
    );
  }
}
