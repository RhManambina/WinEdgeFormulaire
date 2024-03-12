import 'package:flutter/material.dart';

class DialogueText extends StatelessWidget {
  const DialogueText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Container(
          child: SimpleDialog(
        children: [
          Container(
            width: 600,
            height: 300,
            child: Center(
              child: Text(
                'Votre donnée est déjà enregistré',
                style: TextStyle(fontSize: 20),
              ),
            ),
          )
        ],
      )),
      // child: Container(
      //   color: Colors.white,
      //   width: 100,
      //   height: 100,
      //   child: const SimpleDialog(
      //     children: [
      //       Text(
      //         'data',
      //         style: TextStyle(fontSize: 30, color: Colors.black),
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}
