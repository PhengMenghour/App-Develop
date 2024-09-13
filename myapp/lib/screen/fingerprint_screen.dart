import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FingerprintScreen extends StatefulWidget {
  const FingerprintScreen({super.key});

  @override
  State<FingerprintScreen> createState() => _FingerprintScreenState();
}

class _FingerprintScreenState extends State<FingerprintScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        title: Text(
          'Set your fingerprint',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Add a fingerprint to make your account',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'more secure',
                  style: TextStyle(fontSize: 18),
                ),
                Image.asset(
                  'assets/images/fingerprint.png',
                  height: 350,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Please put your finger on the fingerprint',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'scanner to get started',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 150,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Skip'),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          backgroundColor: Colors.green.shade100,
                          foregroundColor: Colors.green.shade800
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 150,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)
                          ),
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white
                        ),
                        child: Text(
                          'Continue',
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
