import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.pink,
      leading: IconButton(icon: Icon(Icons.home), onPressed: (){},),
      title: Text("Hello Flutter App"),),

      body: Container(alignment: Alignment.center,
      child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFzhsnlVVQ1PCnMjdoBqFtQJILUpyPKVEGqg&s"),),

      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(icon: Icon(Icons.home),
            onPressed: (){},),
            IconButton(icon: Icon(Icons.play_circle_fill),
            onPressed: (){},),
            IconButton(icon: Icon(Icons.menu),
            onPressed: (){},)
          ],
        ),
      ),
    );
  }
}