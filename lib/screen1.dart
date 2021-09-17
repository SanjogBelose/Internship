import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Padding instaStories() {
    var image = ExactAssetImage('images/wallpaper.jpg');
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          image = ExactAssetImage('images/spiderman.jpg');
          print('Click is working');
        },
        child: CircleAvatar(
          radius: 25,
          backgroundImage: image,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F1F1),
      appBar: AppBar(
        backgroundColor: Color(0xFFF1F1F1),
        title: Text(
          'FarmsBook',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 26.0),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              size: 30.0,
              color: Color(0xFF387007),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 12, top: 10),
              child: Text(
                'Trending',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.lightGreenAccent[700],
                    child: CircleAvatar(
                      radius: 28,
                      backgroundColor: Colors.white,
                      child: InkWell(
                        onTap: () {
                          print('Click is working fine');
                        },
                        child: CircleAvatar(
                          radius: 25,
                          backgroundImage: NetworkImage(
                              'https://cdn.pixabay.com/photo/2018/01/15/07/52/woman-3083390_1280.jpg'),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              instaStories(),
              instaStories(),
              instaStories(),
              instaStories(),
              instaStories(),
              instaStories(),
            ],
          ),
        ],
      ),
    );
  }
}
