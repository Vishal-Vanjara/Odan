import 'package:flutter/material.dart';
import 'db_helper.dart';
import 'model.dart';

class UiPage extends StatefulWidget {
  const UiPage({super.key});

  @override
  State<UiPage> createState() => _UiPageState();
}

class _UiPageState extends State<UiPage> {
  List<Note> _notes = [];

  @override
  void initState() {
    super.initState();
    _refreshNotes();
  }

  void _refreshNotes() async {
    final data = await DatabaseHelper.instance.getAllNotes();
    setState(() {
      _notes = data;
    });
  }

  void _addNote() async {
    await DatabaseHelper.instance.insertNote(
      Note(title: 'New Note', content: 'This is a test note'),
    );
    _refreshNotes();
  }

  void _deleteNote(int id) async {
    await DatabaseHelper.instance.deleteNote(id);
    _refreshNotes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notes with Sqflite')),
      body: ListView.builder(
        itemCount: _notes.length,
        itemBuilder: (context, index) {
          final note = _notes[index];
          return ListTile(
            title: Text(note.title),
            subtitle: Text(note.content),
            trailing: IconButton(
              icon: Icon(Icons.delete, color: Colors.red),
              onPressed: () => _deleteNote(note.id!),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addNote,
        child: Icon(Icons.add),
      ),
    );
  }
}
