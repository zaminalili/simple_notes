import 'package:simple_notes/models/note_model.dart';

class DataManager {
  final List<NoteModel> _notes = [
    NoteModel('note 1' * 3, id: 1, desc: 'desc 1' * 30),
    NoteModel('note 1', id: 1, desc: 'desc 1'),
    NoteModel('note 1', id: 1, desc: 'desc 1'),
    NoteModel('note 1', id: 1, desc: 'desc 1'),
    NoteModel('note 1', id: 1, desc: 'desc 1'),
    NoteModel('note 1', id: 1, desc: 'desc 1'),
    NoteModel('note 1', id: 1, desc: 'desc 1'),
    NoteModel('note 1', id: 1, desc: 'desc 1'),
    NoteModel('note 1', id: 1, desc: 'desc 1'),
    NoteModel('note 1', id: 1, desc: 'desc 1'),
  ];

  List<NoteModel> get getNotes => _notes;
}
