import 'package:flutter/material.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
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
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
                  onPressed: () {
                    // Handle sign-up logix here
                    final email = _emailController.text;
                    final password = _passwordController.text;
                    // Perform sign-up operation
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
