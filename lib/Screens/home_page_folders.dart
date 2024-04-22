import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/Screens/note_screen.dart';

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
          padding: const EdgeInsets.only(top: 20.0, left: 20.0),
          // Adjust top padding as needed
          child: Text('Notes',
              style: TextStyle(color: Color(0xFF5C8374), fontSize: 30)),
        ),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          SizedBox(height: 20.0),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            // Adjust horizontal padding as needed
            child: Container(
              height: 30.0, // Adjust the height of the TextField as needed
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFF2C2C2F),
                  // Set custom color
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Color(0xFF969696)),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xFF969696), // Set icon color
                    size: 18,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none, // Remove outline
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                      vertical: 5.0), // Adjust vertical content padding
                ),
                cursorColor: Color(0xFF5C8374),
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: 0.0),
          // Added space between search bar and "Sort by" button
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 35.0),
              child: PopupMenuButton<String>(
                icon: Text(
                  'Sort by...',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    decoration: TextDecoration.underline,
                  ),
                ),
                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                  PopupMenuItem<String>(
                    value: 'name',
                    child: Text('Sort by Name', style: TextStyle(color: Colors.white)),
                  ),
                  PopupMenuItem<String>(
                    value: 'date',
                    child: Text('Sort by Date', style: TextStyle(color: Colors.white)),
                  ),
                ],
                onSelected: (String value) {
                  if (value == 'name') {
                    // Handle sort by name
                  } else if (value == 'date') {
                    // Handle sort by date
                  }
                },
                offset: Offset(0, 35),
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 0.0),
          // Added space between "Sort by" button and divider line
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0),
            // Adjust horizontal padding as needed
            child: Divider(
              color: Color(0xFF5C8374),
              // Set divider color to match "Notes" text color
              thickness: 1.0, // Set divider thickness
            ),
          ),
          // Add other widgets for displaying notes or tags here
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to the NewNoteScreen when the FloatingActionButton is pressed
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NewNoteScreen()),
          );
        },
        child: Icon(Icons.add),
        foregroundColor: Colors.white,
        backgroundColor: Color(
            0xFF5C8374), // Set the background color of the FloatingActionButton
      ),
    );
  }
}






