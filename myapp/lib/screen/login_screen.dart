import 'package:flutter/material.dart';
import 'package:myapp/screen/onboarding_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => OnboardingScreen()));
              print("Button pressed");
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Image.asset(
                'assets/images/loginLogo.png',
                height: 250,
              ),
            ),
            Text(
              'Let\'s you in',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            Container(
              margin: EdgeInsets.all(8),
              child: SizedBox(
                width: 350,
                height: 50,
                child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.facebook,
                    size: 25,
                  ),
                  label: Text(
                    'Continue with Facebook',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(8),
              child: SizedBox(
                width: 350,
                height: 50,
                child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: FaIcon(
                    FontAwesomeIcons.google,
                    size: 20,
                  ),
                  label: Text(
                    'Continue with Google',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(8),
              child: SizedBox(
                width: 350,
                height: 50,
                child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.apple,
                    size: 25,
                  ),
                  label: Text(
                    'Continue with Apple',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
              ),
            ),
          ],
          
          
        ),

        
      ),
    );
  }
}
