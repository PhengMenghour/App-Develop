import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final Alignment alignment;

  const ChatBubble({super.key, required this.alignment, required this.message});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Container(
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '$message',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            Image.network(
              'https://images.squarespace-cdn.com/content/v1/5893534986e6c00851e56dbb/d416528b-94b0-472b-b6d5-47858db91cf1/Many+Glacier+Rocks+%26+Reflection+KRP-001.jpg',
              height: 100,
            )
          ],
        ),
        margin: EdgeInsets.all(50),
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
                bottomLeft: Radius.circular(12))),
      ),
    );
  }
}
