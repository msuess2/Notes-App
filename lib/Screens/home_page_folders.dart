import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class HomeFolderScreen extends StatefulWidget {
  HomeFolderScreen({super.key});

  @override
  State<HomeFolderScreen> createState() => _HomeFolderScreenState();
    final PageController _pageController = PageController(initialPage: 0);
    int currentIndex = 0;
}

class _HomeFolderScreenState extends State<HomeFolderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0.0,
        title: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 20.0), // Adjust top padding as needed
        child: Text('Notes', style: TextStyle(color: Color(0xFF5C8374), fontSize: 30)),
      ),
        backgroundColor:Colors.black,

      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SearchAnchor(
          builder: ,
    );
  }
}
