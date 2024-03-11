import 'package:flutter/material.dart';
import 'package:mini/tableauAffichage.dart';

class Tablao extends StatelessWidget {
  const Tablao({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('Liste :'),
        SizedBox(
          height: 30,
        ),
        TableauAffichage(),
      ],
    );
  }
}
