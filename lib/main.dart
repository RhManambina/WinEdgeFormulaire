import 'package:flutter/material.dart';
import 'package:mini/formulaire.dart';
import 'package:mini/tableauAffichage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Form Styling Demo';
    return MaterialApp(
      routes: {
        'tableau': (context) => const TableauAffichage(),
      },
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const MyCustomForm(),
      ),
    );
  }
}
