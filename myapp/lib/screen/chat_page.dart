import 'package:flutter/material.dart';
import 'package:myapp/screen/widgets/chat_bubble.dart';
import 'package:myapp/screen/widgets/chat_input.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Hi Pooja!'),
        actions: [
          IconButton(
              onPressed: () {
                print('Icon pressed!');
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ChatBubble(
                      alignment: index % 2 == 0
                          ? Alignment.centerLeft
                          : Alignment.centerRight,
                      message: 'Hello, this is Pooja');
                }),

            // child: ListView(
            //   children: [
            //     ChatBubble(
            //         alignment: Alignment.centerLeft,
            //         message: "Hello, this is Pooja"),
            //     ChatBubble(alignment: Alignment.centerRight, message: "Hi"),
            //   ],
            // ),
          ),
          ChatInput()
        ],
      ),
    );
  }
}
