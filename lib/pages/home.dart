import 'package:flutter/material.dart';
import 'package:simple_notes/constants/edgeinsets.dart';
import 'package:simple_notes/managers/data_manager.dart';
import 'package:simple_notes/pages/note.dart';

import '../widgets/notesgrid.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final DataManager dataManager = DataManager();
  int crossAxisCount = 2;

  // @override
  // void initState() {
  //   super.initState();

  //   dataManager = DataManager();
  // }

  void _changeCrossAxisCount() {
    setState(() {
      crossAxisCount == 2 ? crossAxisCount = 1 : crossAxisCount = 2;
    });
  }

  void _pushToNotePage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Note()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        leading: IconButton(
          onPressed: _changeCrossAxisCount,
          icon: Icon(crossAxisCount == 1
              ? Icons.list_rounded
              : Icons.grid_view_rounded),
        ),
      ),
      body: Padding(
        padding: AppEdgeInsets.horizantal,
        child: NotesGrid(
          dataManager: dataManager,
          crossAxisCount: crossAxisCount,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _pushToNotePage,
        child: const Icon(Icons.add),
      ),
    );
  }
}
