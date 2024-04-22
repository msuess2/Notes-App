import 'package:flutter/material.dart';
import 'package:notes_app/Screens/home_page_folders.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.inter().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
      title: "Start Screen",
      home: HomeFolderScreen(),
    );
  }
}


