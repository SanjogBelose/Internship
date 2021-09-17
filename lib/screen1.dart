import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Column instaStories() {
    var image = ExactAssetImage('images/wallpaper.jpg');
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 12),
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
        ),
        // SizedBox(
        //   height: 11,
        // ),
        Text('Loreum'),
      ],
    );
  }

  final locations = [
    'Maharashtra',
    'Goa',
    'Rajasthan',
    'Andhra Pradesh',
    'Delhi',
  ];

  final items = [
    'Maize',
    'Wheat',
    'Gram',
    'Pulses',
  ];
  String? value;

  String? count;

  Padding mainCard() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              blurRadius: 2.0,
              offset: Offset(2.0, 2.0),
            ),
          ],
        ),
        //height: 20,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                image: AssetImage('images/maize.jpg'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                children: [
                  Text(
                    'Maize',
                    style: TextStyle(fontSize: 30),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 19, 8, 8),
                    child: Text(
                      'Organic',
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                  // SizedBox(
                  //   width: 200,
                  // ),
                  Spacer(),
                  Icon(
                    Icons.star,
                    color: Color(0xFF387007),
                  ),
                  Text(' 3.5  (20 review)'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: SizedBox(
                height: 20.0,
                width: double.infinity,
                child: Divider(
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text('50 Tons Available'),
                  ),
                  Spacer(),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFF387007)),
                    ),
                    onPressed: () {},
                    child: Text('KNOW MORE'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 8),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text('Rs 40000/Ton'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
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
      body: SingleChildScrollView(
        child: Column(
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
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
                                  backgroundImage:
                                      AssetImage('images/spiderman.jpg'),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text('Loreum'),
                    ],
                  ),
                  instaStories(),
                  instaStories(),
                  instaStories(),
                  instaStories(),
                  instaStories(),
                  instaStories(),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 16, 16, 16),
                  child: DropdownButton<String>(
                    hint: Text(
                      "Select Crop",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    value: value,
                    items: items.map(buildMenuItem).toList(),
                    onChanged: (value) => setState(() => this.value = value),
                  ),
                ),
                //-----------------------------------------------------------------------------------------
                Padding(
                  padding: const EdgeInsets.only(left: 8, top: 16, bottom: 16),
                  child: DropdownButton<String>(
                    hint: Text(
                      "Location",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    value: count,
                    items: locations.map(buildMenuLocation).toList(),
                    onChanged: (count) => setState(() => this.count = count),
                  ),
                ),
              ],
            ),

            // ------------------Card-------------------
            mainCard(),
            mainCard(),
          ],
        ),
      ),
    );
  }

//--------------------------------------------------
  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      );

  DropdownMenuItem<String> buildMenuLocation(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      );
}
