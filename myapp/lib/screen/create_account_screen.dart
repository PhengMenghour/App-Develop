import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myapp/screen/home_page.dart';
import 'package:myapp/screen/login_page.dart';
import 'package:myapp/screen/login_screen.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _rememberMe = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      height: 60,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Create Your Account',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              TextField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(),
                  suffix: Icon(Icons.visibility),
                ),
                obscureText: true,
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Checkbox(
                    value: _rememberMe,
                    onChanged: (bool? value) {
                      setState(() {
                        _rememberMe = value!;
                      });
                    },
                  ),
                  const Text('Remember me'),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async {
                    String email = _emailController.text.trim();
                    String password = _passwordController.text.trim();

                    try {
                      UserCredential userCredential =
                          await _auth.createUserWithEmailAndPassword(
                        email: email,
                        password: password,
                      );

                      if (userCredential.user != null) {
                        await _firestore
                            .collection('users')
                            .doc(userCredential.user!.uid)
                            .set({
                          'email': email,
                        });
                        print('Sign up successful, navigating to HomePage');
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      } else {
                        print('Sign up failed, user is null');
                      }
                    } catch (e) {
                      print('Failed to sign up: $e');
                    }
                  },
                  child: const Text('Sign up'),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text('or continue with'),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      // Handle Facebook login
                    },
                    icon: Icon(Icons.facebook),
                    iconSize: 30,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  IconButton(
                    onPressed: () {
                      // Handle Google login
                    },
                    icon: Image.asset(
                      'assets/images/googleLogo.png',
                      height: 20,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.apple),
                    iconSize: 30,
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Already have an account? Sign in',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
// Future<void> signUpWithEmailAndPassword(String email, String password, String username) async {
//     try {
//       // Create user with email and password in Firebase Authentication
//       final firebaseAuth = firebase_auth.FirebaseAuth.instance;
//       await firebaseAuth.createUserWithEmailAndPassword(
//         email: email,
//         password: password,
//       );

//       // Store user data in Firestore
//       await firestore.collection('users').doc(email).set({
//         'username': username,
//         'email': email,
//         // Add more user data fields as needed
//       });

//       // Navigate to home page or any other desired page after successful sign-up
//       // Navigator.pushNamed(context, homeRoute);
//     } catch (e) {
//       print('Failed to sign up with email and password: $e');
//       // Handle sign-up failure
//     }
//   }
