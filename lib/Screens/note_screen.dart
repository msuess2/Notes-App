import 'package:flutter/material.dart';

class NewNoteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0), // Adjust the height of the app bar
        child: AppBar(
          title: Text(
            'Notes',
            style: TextStyle(
              color: Color(0xFF5C8374),
              fontSize: 24, // Adjust font size as needed
              fontWeight: FontWeight.w400, // Adjust font weight as needed
            ),
          ),
          backgroundColor: Color(0xFF2C2C2F), // Set background color of app bar
          iconTheme: IconThemeData(
            color: Color(0xFF5C8374), // Set color of the back button icon
            size: 24, // Adjust icon size as needed
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
            padding: EdgeInsets.only(left: 8.0), // Adjust left padding as needed
          ),
        ),
      ),
      backgroundColor: Colors.black, // Set background color of the screen
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25.0, 12.0, 25.0, 0.0), // Add padding from top
        child: TextField(
          style: TextStyle(fontSize: 24, color: Colors.white), // Set text color of the note
          cursorColor: Color(0xFF5C8374), // Set cursor color
          decoration: InputDecoration(
            border: InputBorder.none, // Remove the border

            hintStyle: TextStyle(color: Color(0xFF969696)), // Set hint text color
          ),
          keyboardType: TextInputType.multiline, // Allow multiline text input
          maxLines: null, // Allow unlimited lines of text
          autofocus: true, // Autofocus the text field
        ),
      ),
    );
  }
}