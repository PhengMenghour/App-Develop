import 'package:flutter/material.dart';

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
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Hi, this is your message!',
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
          Container(
            padding: EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Hi, this is your message!',
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
          Container(
            padding: EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Hi, this is your message!',
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
          Container(
            height: 100,
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.send,
                      color: Colors.white,
                    )),
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
          )
        ],
      ),
    );
  }
}
