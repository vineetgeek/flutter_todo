import 'package:flutter/material.dart';
import 'dart:async';
import '../database_helper.dart';
import '../note.dart';
import 'note_details.dart';
import 'package:sqflite/sql.dart';

class NoteList extends StatefulWidget {
  const NoteList({Key? key}) : super(key: key);

  @override
  _NoteListState createState() => _NoteListState();
}

class _NoteListState extends State<NoteList> {
  DatabaseHelper databaseHelper = DatabaseHelper();

  late List<Note> noteList;
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ToDo'),
        ),
        body: Container(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.purple,
          child: Icon(Icons.add),
          onPressed: () {
            navigateToDetail(Note('', '', 2), 'Add Note');
          },
        ));
  }

  void navigateToDetail(Note note, String title) async {
    bool result =
        await Navigator.push(context, MaterialPageRoute(builder: (context) {
      return NoteDetail(note, title);
    }));

    if (result == true) {
      //for the future result
    }
  }
}
