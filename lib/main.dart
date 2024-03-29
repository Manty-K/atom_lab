import 'package:atom_lab/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screens/periodic_table_screen/periodic_table.dart';

void main() {
  runApp(PeriodicTable());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AtomLab',
      theme: ThemeData(
        scaffoldBackgroundColor: kBlack,
        brightness: Brightness.dark,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PeriodicTable(),
    );
  }
}
