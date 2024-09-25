import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class RecoveryScreen extends StatefulWidget {
  const RecoveryScreen({super.key});

  @override
  State<RecoveryScreen> createState() => _RecoveryScreenState();
}

class _RecoveryScreenState extends State<RecoveryScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<bool> selected = [false, false];
    selected[selectedIndex] = true;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        title: Text(
          'Forgot Password',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Image.asset(
                'assets/images/recovery.png',
                height: 300,
              ),
              Text(
                'Select which control details should we use to reset your password',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 16,
              ),
              // ToggleButtons(
              //     constraints: BoxConstraints(
              //         minWidth: 275, minHeight: 75), // Set the width and height
              //     borderRadius: BorderRadius.circular(8),
              //     borderWidth: 2,
              //     borderColor: Colors.grey.shade200, // Remove default border
              //     selectedBorderColor:
              //         Colors.green, // Remove selected border
              //     fillColor: Colors.blue.shade100, // Background when selected

              //     direction: Axis.vertical,
              //     children: <Widget>[
              //       Padding(
              //           padding: const EdgeInsets.symmetric(horizontal: 10),
              //           child: Text('via SMS')),
              //       Padding(
              //         padding: const EdgeInsets.symmetric(horizontal: 10),
              //         child: Text('via Email'),
              //       )
              //     ],
              //     isSelected: selected,
              //     onPressed: (int index) {
              //       setState(() {
              //         selectedIndex = index;
              //       });
              //     })

              InkWell(
                onTap: () {
                  setState(() {
                    selectedIndex = 0;
                  });
                },
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  width: double.infinity,
                  height: 100,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                        color: selectedIndex == 0
                            ? Colors.green
                            : Colors.grey.shade200,
                        width: 2),
                    color:
                        selectedIndex == 0 ? Colors.white : Colors.transparent,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Icons
                      Stack(
                        children: <Widget>[
                          Container(
                            width: 65,
                            height: 75,
                            decoration: BoxDecoration(
                                color: Colors.green.shade100,
                                borderRadius: BorderRadius.circular(200)),
                          ),
                          Positioned(
                              top: 15,
                              left: 15,
                              child: Image.asset(
                                'assets/images/bubble_speech.png',
                                width: 35,
                                height: 35,
                              ))
                        ],
                      ),
                      const SizedBox(
                        width: 16,
                      ),

                      //Text
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'via SMS',
                            style: TextStyle(color: Colors.grey.shade500),
                          ),
                          Text(
                            '+1 111 *******99',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),

              const SizedBox(
                height: 16,
              ),

              InkWell(
                onTap: () {
                  setState(() {
                    selectedIndex = 1;
                  });
                },
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  width: double.infinity,
                  height: 100,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                        color: selectedIndex == 1
                            ? Colors.green
                            : Colors.grey.shade200,
                        width: 2),
                    color:
                        selectedIndex == 1 ? Colors.white : Colors.transparent,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Icons
                      Stack(
                        children: <Widget>[
                          Container(
                            width: 65,
                            height: 75,
                            decoration: BoxDecoration(
                                color: Colors.green.shade100,
                                borderRadius: BorderRadius.circular(200)),
                          ),
                          Positioned(
                              top: 15,
                              left: 15,
                              child: Image.asset(
                                'assets/images/email.png',
                                width: 35,
                                height: 35,
                                color: Colors.green,
                              ))
                        ],
                      ),
                      const SizedBox(
                        width: 16,
                      ),

                      //Text
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'via SMS',
                            style: TextStyle(color: Colors.grey.shade500),
                          ),
                          Text(
                            'and***ley@yourdomain.com',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),

              SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Continue', style: TextStyle(fontSize: 16),
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
        ),
      ),
    );
  }
}
