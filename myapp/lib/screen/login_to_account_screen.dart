import 'package:flutter/material.dart';
import 'package:myapp/screen/login_screen.dart';

class LoginToAccount extends StatefulWidget {
  const LoginToAccount({super.key});

  @override
  State<LoginToAccount> createState() => _LoginToAccountState();
}

class _LoginToAccountState extends State<LoginToAccount> {
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));
        }, icon: Icon(Icons.arrow_back)),
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
                      'Login to Your Account',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              TextField(
                decoration: const InputDecoration(
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 16,
              ),
              TextField(
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
                      setState(
                        () {
                          _rememberMe = value!;
                        },
                      );
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
                  onPressed: () {},
                  child: const Text('Sign in'),
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
              Center(
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot the password?',
                      style: TextStyle(color: Colors.green),
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text('or continue with'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      // Facebook login
                    },
                    icon: Icon(Icons.facebook),
                    iconSize: 30,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  IconButton(
                    onPressed: () {
                      // Google login
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
                    onPressed: () {
                      // Apple login
                    },
                    icon: Icon(Icons.apple),
                  ),
                ],
              ),
              const SizedBox(
                height: 75,
              ),
              Center(
                child: TextButton(
                    onPressed: () {},
                    child: Text('Don\'t have an account? Sign up')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
