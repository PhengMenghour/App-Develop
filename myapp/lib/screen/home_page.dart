import 'package:flutter/material.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Test App #2
      appBar: AppBar(
        title: new Center(child: new Text("Flutter Layout Demo", textAlign: TextAlign.center),),
      ),
    
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network('https://photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography.jpg'),
            const TitleSection(
              name: 'Oeschinen Lake Campground',
              location: 'Kandersteg, Switzerland'
            ),
            const ButtonSection(),
            const TextSection(description: 
              'Lake iescgubeb kues at the foot of the Bluemlisalp in the Bernese Alps. '
              'Situated 1,578 meters above sea level, it'
              'is one of the larger Alpine Lakes. A gondola ride from'
              'Kandersteg, followed by a half-hour walk through pastures'
              'and pine forest, leads you to the lake, which warms to 20'
              'degrees Celsius in the summer. Activities enjoyed here'
              'include rowing, and riding the summer toboggan run.'
              'Had he known what was going to happen, he would have never stepped into the shower.'
              'He had reached the point where he was paranoid about being paranoid.'
              'It\'s not often you find a soggy banana on the street.'
            )
  

          ],

        ),
      ),

      
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location
  });

  final String name;
  final String location;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  location,
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(
            color: color,
            icon: Icons.call,
            label: 'CALL'
          ),
          ButtonWithText(
            color: color, 
            icon: Icons.near_me, 
            label: 'ROUTE'
          ),
          ButtonWithText(
            color: color, 
            icon: Icons.share, 
            label: 'SHARE'
          ),
        ],
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.description,
    });

    final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}




