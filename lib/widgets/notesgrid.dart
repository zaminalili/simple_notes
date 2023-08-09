import 'package:flutter/material.dart';
import 'package:simple_notes/constants/edgeinsets.dart';

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
          child: Container(
              // height: MediaQuery.of(context).size.height,
              padding: AppEdgeInsets.all,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(10), // Kenar yuvarlaklığı ayarla
                border: Border.all(
                  color: Theme.of(context)
                      .colorScheme
                      .secondary, // Kenar çizgisi rengi
                  width: 1, // Kenar çizgisi genişliği
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.dataManager.getNotes[index].title ?? '',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    widget.dataManager.getNotes[index].desc,
                    maxLines: 6,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              )),
        );
      },
    );
  }
}
