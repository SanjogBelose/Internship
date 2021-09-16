import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  int _selectedIndex = 0;
  Color iconDefault = Color(0xFF9CB880);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Card chats(String chatCount, Color colorOfBadge) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30.0,
          backgroundImage: AssetImage('images/spiderman.jpg'),
        ),
        title: Text('Lorem Ipsum'),
        subtitle: Text('Did you get my order'),
        trailing: Column(
          children: [
            Text('12:30'),
            Badge(
              badgeContent: Text(
                chatCount,
                style: TextStyle(color: Colors.white),
              ),
              badgeColor: colorOfBadge,
            ),
          ],
        ),
      ),
      elevation: 10.0,
      color: Color(0xFFE4E4E4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'Chats',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Padding(
          //   padding: const EdgeInsets.all(16.0),
          chats('5', Color(0xFF387007)),
          chats('3', Color(0xFF387007)),
          chats('2', Color(0xFF387007)),
          chats('', Color(0xFFE4E4E4)),
          chats('', Color(0xFFE4E4E4)),
          //),
        ],
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
