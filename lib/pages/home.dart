import 'package:flutter/material.dart';
import 'package:simple_notes/managers/data_manager.dart';

import '../widgets/notesgrid.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final DataManager dataManager = DataManager();

  // @override
  // void initState() {
  //   super.initState();

  //   dataManager = DataManager();
  // }

  @override
  Widget build(BuildContext context) {
    int crossAxisCount = 2;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.grid_view_rounded),
        ),
      ),
      body: NotesGrid(
        dataManager: dataManager,
        crossAxisCount: crossAxisCount,
      ),
    );
  }
}
