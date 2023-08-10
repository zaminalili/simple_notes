import 'package:flutter/material.dart';
import 'package:simple_notes/constants/edgeinsets.dart';
import 'package:simple_notes/models/note_model.dart';

class Note extends StatefulWidget {
  const Note({super.key, this.note});
  final NoteModel? note;

  @override
  State<Note> createState() => _NoteState();
}

class _NoteState extends State<Note> {
  late String? title = widget.note == null ? '' : widget.note!.title;
  late final String desc = widget.note == null ? '' : widget.note!.desc;

  late final TextEditingController _titleController =
      TextEditingController(text: title ?? '');
  late final TextEditingController _descController =
      TextEditingController(text: desc);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Padding(
        padding: AppEdgeInsets.horizantal,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              TextField(
                controller: _titleController,
                maxLines: 2,
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                decoration: const InputDecoration(
                    hintText: 'Title',
                    hintStyle: TextStyle(fontSize: 22),
                    border: InputBorder.none),
              ),
              TextField(
                  controller: _descController,
                  maxLines: 28,
                  decoration: const InputDecoration(
                      hintText: 'Note', border: InputBorder.none))
            ],
          ),
        ),
      ),
    );
  }
}
