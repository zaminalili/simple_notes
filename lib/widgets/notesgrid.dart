import 'package:flutter/material.dart';

import '../managers/data_manager.dart';

class NotesGrid extends StatefulWidget {
  const NotesGrid(
      {super.key, required this.dataManager, required this.crossAxisCount});

  final DataManager dataManager;
  final int crossAxisCount;

  @override
  State<NotesGrid> createState() => _NotesGridState();
}

class _NotesGridState extends State<NotesGrid> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: widget.crossAxisCount, // Sütun sayısı
        mainAxisSpacing: 10.0, // Dikey aralık
        crossAxisSpacing: 10.0, // Yatay aralık
      ),
      itemCount: widget.dataManager.getNotes.length, // Veri sayısı
      itemBuilder: (BuildContext context, int index) {
        // Verileri burada doldurun
        return InkWell(
          onTap: () {},
          child: Text(widget.dataManager.getNotes[index].desc),
        );
      },
    );
  }
}
