import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:myapp/screen/login_screen.dart';


class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          image: Center(
            child: Image.network(
              'https://cdn.vectorstock.com/i/500p/53/93/hand-holding-plant-pot-carrying-flower-vector-51325393.jpg',
              height: 175,
            ),
          ),
          title: 'We provide high quality plants just for you',
          body: '',
          decoration: const PageDecoration(
            titleTextStyle:
                TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            bodyTextStyle: TextStyle(fontSize: 16),
          ),
        ),
        PageViewModel(
          image: Center(
            child: Image.network(
              'https://cdn.vectorstock.com/i/500p/53/93/hand-holding-plant-pot-carrying-flower-vector-51325393.jpg',
              height: 175,
            ),
          ),
          title: 'Your satisfaction is our number one priority',
          body: '',
          decoration: const PageDecoration(
            titleTextStyle:
                TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            bodyTextStyle: TextStyle(fontSize: 16),
          ),
        ),
        PageViewModel(
            image: Center(
              child: Image.network(
                'https://cdn.vectorstock.com/i/500p/53/93/hand-holding-plant-pot-carrying-flower-vector-51325393.jpg',
                height: 175,
              ),
            ),
            title: 'Let\'s Shop Your Favorite plants with Potea Now!',
            body: '',
            decoration: const PageDecoration(
              titleTextStyle:
                  TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              bodyTextStyle: TextStyle(fontSize: 16),
            ),
            footer: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => LoginScreen()),
                );
              },
              child: const Text('Get Started'),
            )),
      ],
      onDone: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => LoginScreen()),
        );
      },
      onSkip: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => LoginScreen()),
        );
      },
      showSkipButton: true,
      skip: const Text('Skip'),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      dotsDecorator: const DotsDecorator(
        size: Size.square(10),
        activeSize: Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25)),
        )
      ),

    );
  }
}
