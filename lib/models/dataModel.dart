import 'package:flutter/material.dart';

class Note {
  int id;
  String title;
  String content;
  List<Tag> tags;
  DateTime creationDate;
  int totalTags;

  Note({
    required this.id,
    required this.title,
    required this.content,
    required this.tags,
    required this.creationDate,
    required this.totalTags
  });
}

class Tag {
  int id;
  String name;
  List<Note> notes;
  int totalNotes;
  DateTime lastDate;


  Tag({
    required this.id,
    required this.name,
    required this.notes,
    required this.totalNotes,
    required this.lastDate
  });
}