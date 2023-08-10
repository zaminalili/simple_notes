import 'package:simple_notes/models/note_model.dart';
import 'package:simple_notes/validators/validate.dart';

class DataManager {
  final List<NoteModel> _notes = [];

  List<NoteModel> get getNotes => _notes;

  void setNote(NoteModel note) {
    // Validate.isNotEmpahtyAndNull(note.desc) ? _notes.add(note) : '';

    if (Validate.isNotEmpahtyAndNull(note.desc)) {
      _isExist(note.id) ? editNote(note) : addNote(note);
    }
  }

  void addNote(NoteModel note) {
    _notes.add(note);
  }

  void editNote(NoteModel note) {
    NoteModel newNote = NoteModel(note.title, id: note.id, desc: note.desc);

    _notes.remove(note);
    _notes.add(newNote);
  }

  bool _isExist(int id) {
    bool result = false;

    for (var e in _notes) {
      if (e.id == id) {
        result = true;
        break;
      }
    }

    return result;
  }
}
