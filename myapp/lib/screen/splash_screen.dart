import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.network(
              'https://www.kindpng.com/picc/m/68-682794_art-plant-logo-leaf-png-transparent-png.png', width: 300, height: 300,),
          Container(
            child: LoadingAnimationWidget.hexagonDots(
                color: Colors.green, size: 50),
          )
        ],
      ),
    );

    // return Scaffold(
    //   body: Center(
    //   child: LoadingAnimationWidget.hexagonDots(
    //     color: Colors.green,
    //     size: 50,
    //   ),
    // ));
  }
}
