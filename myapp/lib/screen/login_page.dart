import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Let's sign you in",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5),
            ),
            Text(
              "Welcome back! \n You've been missed!",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.blueGrey),
            ),
            Image.network(
              'https://images.squarespace-cdn.com/content/v1/5893534986e6c00851e56dbb/d416528b-94b0-472b-b6d5-47858db91cf1/Many+Glacier+Rocks+%26+Reflection+KRP-001.jpg',
              height: 300,
              width: 300,
            ),
            Container(
              height: 50,
              width: 50,
              child: FlutterLogo(),
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(50),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://images.squarespace-cdn.com/content/v1/5893534986e6c00851e56dbb/d416528b-94b0-472b-b6d5-47858db91cf1/Many+Glacier+Rocks+%26+Reflection+KRP-001.jpg'),
                    fit: BoxFit.fitHeight),
                borderRadius: BorderRadius.circular(24),
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
