import 'package:flutter/material.dart';
import 'package:farmsbook/screen2.dart';

void main() {
  runApp(FarmsBook());
}

class FarmsBook extends StatelessWidget {
  const FarmsBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChatPage(),
    );
  }
}
