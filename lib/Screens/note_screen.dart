import 'package:flutter/material.dart';

class NewNoteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Note'),
      ),
      body: Center(
        child: Text('Write your new note here.'),
      ),
    );
  }
}