import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:myapp/screen/home_page.dart';

class FingerprintScreen extends StatefulWidget {
  const FingerprintScreen({super.key});

  @override
  State<FingerprintScreen> createState() => _FingerprintScreenState();
}

enum SupportState {
  unknown,
  supported,
  unSupported,
}

class _FingerprintScreenState extends State<FingerprintScreen> {
  final LocalAuthentication auth = LocalAuthentication();
  SupportState supportState = SupportState.unknown;
  List<BiometricType>? availableBiometrics;

  @override
  void initState() {
    auth.isDeviceSupported().then((bool isSupported) => setState(() =>
        supportState =
            isSupported ? SupportState.supported : SupportState.unSupported));

    super.initState();
    checkBiometric();
    getAvailableBiometrics();
  }

  Future<void> checkBiometric() async {
    late bool canCheckBiometric;
    try {
      canCheckBiometric = await auth.canCheckBiometrics;
      print("Biometric supported: $canCheckBiometric");
    } on PlatformException catch (e) {
      print(e);
      canCheckBiometric = false;
    }
  }

  Future<void> getAvailableBiometrics() async {
    late List<BiometricType> biometricTypes;
    try {
      biometricTypes = await auth.getAvailableBiometrics();
      print("supported biometrics $biometricTypes");
    } catch (e) {
      print(e);
    }

    if (!mounted) {
      return;
    }
    setState(() {
      availableBiometrics = biometricTypes;
    });
  }

  Future<void> authencateWithBiometrics() async {
    try {
      final authenticated = await auth.authenticate(
          localizedReason: 'Authenticate with fingerprint or Face ID');
      options:
      const AuthenticationOptions(
        stickyAuth: true,
        biometricOnly: true,
      );

      if (!mounted) {
        return;
      }

      if (authenticated) {
        // Navigator.push(
        //     context, MaterialPageRoute(builder: (context) => HomePage()));

        // Show a success dialog
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/congratLogo.png'),
                    const SizedBox(
                      height: 16,
                    ),
                    Title(
                        color: Colors.black,
                        child: Text(
                          'Congratulation',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        )),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                        'Your account is ready to use. You will be refirected to the Home page in a few seconds.'),
                    const SizedBox(
                      height: 16,
                    ),
                    LoadingAnimationWidget.hexagonDots(
                        color: Colors.green, size: 50),
                  ],
                ),

                // actions: [
                //   TextButton(onPressed: (){
                //     Navigator.of(context).pop();
                //   }, child: Text('OK'))
                // ],
              );
            });
        Future.delayed(const Duration(seconds: 3), () {
          Navigator.pop(context);
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => HomePage()));
        });
      }
    } on PlatformException catch (e) {}
  }

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
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                        child: Text('Skip'),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            backgroundColor: Colors.green.shade100,
                            foregroundColor: Colors.green.shade800),
                      ),
                    ),
                    SizedBox(
                      width: 150,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: authencateWithBiometrics,
                        child: Text(
                          'Continue',
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.white),
                      ),
                    ),
                  ],
                ),
                // Text(
                //   supportState == SupportState.supported
                //       ? 'Biometric authentication is supported on this device'
                //       : supportState == SupportState.unSupported
                //           ? 'Biometric authentication is not supported on this device'
                //           : 'Checking biometric support...',
                // ),
                // Text('Supported biometrics : $availableBiometrics'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
