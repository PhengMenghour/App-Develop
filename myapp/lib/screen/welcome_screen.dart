import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.network(
              'https://www.pngmart.com/files/21/Aesthetic-Plant-PNG-Isolated-Photos.png',
              width: 300,
              height: 300,
            ),
          ),
          Text('Welcome to 👋',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.w500)),
          Text(
            'Potea',
            style: TextStyle(
                fontSize: 52, fontWeight: FontWeight.w700, color: Colors.green),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text('The best plant e-commerce & online store app of the century of your needs!', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),),
          )
        ],
      ),
    );
  }
}
