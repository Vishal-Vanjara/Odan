import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Practice extends StatefulWidget {
  const Practice({super.key});

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  final _controller = TextEditingController();
  final _box = Hive.box('Mytable');

  void _addNote() {
    if (_controller.text.isNotEmpty) {
      _box.add(_controller.text);
      _controller.clear();
      setState(() {});
    }
  }
  void _deleteNote(int index) {
    _box.deleteAt(index);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final notes = _box.values.toList();

    return Scaffold(
        appBar: AppBar(
          title: Text("HIVE DataBase"),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: "Enter a Text Here",
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.system_update_alt_rounded),
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
                        icon: Icon(Icons.delete),
                        onPressed: () => _deleteNote(index),
                      ),
                    );
                  }),
            ),
          ],
        ));
  }
}
