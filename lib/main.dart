import 'package:flutter/material.dart';
import 'package:simple_notes/constants/theme.dart';
import 'package:simple_notes/managers/data_manager.dart';
import 'package:simple_notes/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Notes',
      theme: AppTheme().lightTheme,
      darkTheme: AppTheme().darkTheme,
      themeMode: ThemeMode.dark,
      home: Home(dataManager: DataManager()),
    );
  }
}
