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
      body: Column(
        children: [
          SizedBox(height: 20.0), // Added space between search bar and "Sort by" button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0), // Adjust horizontal padding as needed
            child: Container(
              height: 35.0, // Adjust the height of the TextField as needed
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFF2C2C2F), // Set custom color
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
                  contentPadding: EdgeInsets.symmetric(vertical: 5.0), // Adjust vertical content padding
                ),
                cursorColor: Color(0xFF5C8374),
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: 13.0), // Added space between search bar and "Sort by" button
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 35.0), // Adjust padding as needed
              child: GestureDetector(
                onTap: () {
                  // Implement a method to show the pop-out drop-down menu
                  _showSortMenu(context);
                },
                child: Text(
                  'Sort by...',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10.0), // Added space between "Sort by" button and divider line
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0), // Adjust horizontal padding as needed
            child: Divider(
              color: Color(0xFF5C8374), // Set divider color to match "Notes" text color
              thickness: 1.0, // Set divider thickness
            ),
          ), // Add other widgets for displaying notes or tags here
        ],
      ),
    );
  }

  void _showSortMenu(BuildContext context) {
    // Implement your pop-out drop-down menu logic here
    // For example, using PopupMenuButton
    showMenu(
      context: context,
      position: RelativeRect.fromLTRB(0, 0, 0, 0),
      items: <PopupMenuEntry>[
        PopupMenuItem(
          child: Text('Sort by Name'),
          value: 'name',
        ),
        PopupMenuItem(
          child: Text('Sort by Date'),
          value: 'date',
        ),
        // Add more menu items as needed
      ],
      elevation: 8.0,
    );
  }
}










