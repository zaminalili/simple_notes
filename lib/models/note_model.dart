class NoteModel {
  NoteModel(this.title, {required this.id, required this.desc});

  final int id;
  final String? title;
  final String desc;
  final DateTime time = DateTime.now();
  final isPinned = false;
  final isDeleted = false;
}
