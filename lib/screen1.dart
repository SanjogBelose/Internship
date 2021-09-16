import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  Color iconDefault = Color(0xFF9CB880);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F1F1),
      appBar: AppBar(
        backgroundColor: Color(0xFFF1F1F1),
        title: Text(
          'FarmsBook',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
