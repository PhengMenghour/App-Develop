import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:myapp/screen/welcome_screen.dart';

class OnboardingScreenTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Welcome to MyApp",
          body: "This is a brief introduction to the app.",
          image: Center(
            child: Image.network(
              "https://www.kindpng.com/picc/m/68-682794_art-plant-logo-leaf-png-transparent-png.png",
              height: 175.0,
            ),
          ),
          decoration: const PageDecoration(
            titleTextStyle:
                TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            bodyTextStyle: TextStyle(fontSize: 16.0),
          ),
        ),
        PageViewModel(
          title: "Discover Features",
          body: "Explore the app's various features and functionalities.",
          image: Center(
            child: Image.network(
              "https://via.placeholder.com/150",
              height: 175.0,
            ),
          ),
          decoration: const PageDecoration(
            titleTextStyle:
                TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            bodyTextStyle: TextStyle(fontSize: 16.0),
          ),
        ),
        PageViewModel(
          title: "Get Started",
          body: "Sign up or log in to start using the app.",
          image: Center(
            child: Image.network(
              "https://via.placeholder.com/150",
              height: 175.0,
            ),
          ),
          decoration: const PageDecoration(
            titleTextStyle:
                TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            bodyTextStyle: TextStyle(fontSize: 16.0),
          ),
          footer: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (_) => WelcomeScreen()),
              );
            },
            child: const Text("Let's Go!"),
          ),
        ),
      ],
      onDone: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => WelcomeScreen()),
        );
      },
      onSkip: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => WelcomeScreen()),
        );
      },
      showSkipButton: true,
      skip: const Text("Skip"),
      next: const Icon(Icons.arrow_forward),
      done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
      dotsDecorator: const DotsDecorator(
        size: Size.square(10.0),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
