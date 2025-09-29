import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'db_helper.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({super.key});

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  final dbHelper = DatabaseHelper.instance;
  List<Map<String, dynamic>> _notes = [];

  @override
  void initState() {
    super.initState();
    _refreshNotes();
  }

  Future<void> _refreshNotes() async {
    final data = await dbHelper.queryAll();
    setState(() {
      _notes = data;
    });
  }

  Future<void> _createNote() async {
    await dbHelper.insert({'title': 'New Note', 'content': 'Hello world!'});
    _refreshNotes();
  }

  Future<void> _updateNote(int id) async {
    await dbHelper.update({'id': id, 'title': 'Updated', 'content': 'Updated content'});
    _refreshNotes();
  }

  Future<void> _deleteNote(int id) async {
    await dbHelper.delete(id);
    _refreshNotes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Notes CRUD Example')),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: _createNote, child: const Text("Create")),
              ElevatedButton(onPressed: _refreshNotes, child: const Text("Read")),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _notes.length,
              itemBuilder: (context, index) {
                final note = _notes[index];
                return ListTile(
                  title: Text(note['title']),
                  subtitle: Text(note['content']),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.edit, color: Colors.green),
                        onPressed: () => _updateNote(note['id']),
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete, color: Colors.red),
                        onPressed: () => _deleteNote(note['id']),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
