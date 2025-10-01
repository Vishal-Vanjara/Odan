
//https://chatgpt.com/share/68dcb07e-c3a4-8006-ad7d-d65e8af3a6a6

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class HiveDb extends StatefulWidget {
  const HiveDb({super.key});

  @override
  State<HiveDb> createState() => _HiveDbState();
}

class _HiveDbState extends State<HiveDb> {

  final _controller = TextEditingController();
  final _box = Hive.box('myBox');  //<-----This connects your widget to the opened box.

  void _addNote() {
    if (_controller.text.isNotEmpty) { //This line performs a check to ensure that the user has actually typed something.
      _box.add(_controller.text); //<------.add(value) → inserts a new entry (auto-key).
      _controller.clear();
      setState(() {});
    }
  }

  void _deleteNote(int index) {
    _box.deleteAt(index); //<------The index is a crucial identifier; it represents the position.
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final notes = _box.values.toList();
                // .values → gives you everything inside.
                //.toList() → turns it into a normal Dart List.

    return Scaffold(
      appBar: AppBar(title: const Text("Hive Notes")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: "Enter a note",
                suffixIcon: IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: _addNote,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: notes.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(notes[index].toString()),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () => _deleteNote(index),
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
