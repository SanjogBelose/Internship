import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
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
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xFF387007),
          ),
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => const MyNavigationBar()),
            // );
          },
        ),
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'Chats',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.settings,
              size: 30.0,
              color: Color(0xFF387007),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          chats('5', Color(0xFF387007)),
          chats('3', Color(0xFF387007)),
          chats('2', Color(0xFF387007)),
          chats('', Color(0xFFE4E4E4)),
          chats('', Color(0xFFE4E4E4)),
        ],
      ),
    );
  }
}
