import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';

class CreatePin extends StatefulWidget {
  const CreatePin({super.key});

  @override
  State<CreatePin> createState() => _CreatePinState();
}

class _CreatePinState extends State<CreatePin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text('Create New PIN'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Add a PIN number to make your account',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                ),
                Text(
                  'more secure',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 100,
                ),
                PinCodeFields(
                  length: 4,
                  fieldBorderStyle: FieldBorderStyle.square,
                  responsive: false,
                  fieldHeight: 40,
                  fieldWidth: 60,
                  borderWidth: 1,
                  activeBorderColor: Colors.green,
                  activeBackgroundColor: Colors.green.shade100,
                  borderRadius: BorderRadius.circular(10),
                  keyboardType: TextInputType.number,
                  autoHideKeyboard: false,
                  fieldBackgroundColor: Colors.black12,
                  borderColor: Colors.black38,
                  obscureText: true,
                  textStyle:
                      TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  onComplete: (output) {
                    // Logic
                    print(output);
                  },
                ),
                SizedBox(height: 100,),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  
                  child: ElevatedButton(onPressed: (){
                  
                  }, child: Text('Continue'), style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                    ),
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                  ),),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
