import 'package:flutter/material.dart';

class DialogueText extends StatelessWidget {
  const DialogueText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            // Color.fromRGBO(171, 115, 59, 1), // Original color
            // Color(0xFFB5924D),
            // Color.fromARGB(255, 199, 202, 31),
            Color.fromARGB(255, 62, 135, 199),
            Color.fromRGBO(84, 173, 212, 1),
            Color(0xFFCBAF69), // Original color
            Color.fromARGB(255, 62, 135, 199),
            Color(0xFFA48465),
            Color.fromRGBO(84, 173, 212, 1),
            Color.fromARGB(255, 62, 135, 199),
          ])),
      // decoration: const BoxDecoration(
      //     gradient: LinearGradient(
      //         begin: Alignment.topCenter,
      //         end: Alignment.bottomCenter,
      //         colors: [
      //       Color.fromARGB(255, 110, 179, 214), // Original color
      //       Color.fromARGB(255, 135, 145, 210),
      //       Color.fromARGB(255, 79, 90, 150),
      //       Color.fromRGBO(84, 173, 212, 1),
      //       Color.fromARGB(255, 62, 135, 199),
      //     ])),
      child: Container(
          child: SimpleDialog(
        children: [
          Container(
            width: 600,
            height: 300,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Votre donnée est enregistré',
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Retour',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ))
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
