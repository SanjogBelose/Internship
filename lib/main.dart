import 'package:farmsbook/screen1.dart';
import 'package:farmsbook/screen2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(FarmsBook());
}

class FarmsBook extends StatelessWidget {
  const FarmsBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyNavigationBar(),
    );
  }
}

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({Key? key}) : super(key: key);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;
  Color iconDefault = Color(0xFF9CB880);

  final List _pages = [
    HomePage(),
    ChatPage(),
  ];

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onItemTapped,
        currentIndex: _selectedIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: iconDefault),
            label: 'Home',
            backgroundColor: Color(0xFF387007),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.question_answer, color: iconDefault),
            label: 'Chat',
            backgroundColor: Color(0xFF387007),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help, color: iconDefault),
            label: 'Requirement',
            backgroundColor: Color(0xFF387007),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_shipping, color: iconDefault),
            label: 'Orders',
            backgroundColor: Color(0xFF387007),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle, color: iconDefault),
            label: 'Profile',
            backgroundColor: Color(0xFF387007),
          ),
        ],
      ),
    );
  }
}
