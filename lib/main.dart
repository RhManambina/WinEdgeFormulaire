import 'package:flutter/material.dart';
import 'package:mini/investisseur.dart';
import 'package:mini/succes.dart';
import 'package:mini/firebase/config.dart';
import 'package:mini/meet.dart';
import 'package:mini/listemeet.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: FirebaseConfig.apiKey,
      authDomain: FirebaseConfig.authDomain,
      projectId: FirebaseConfig.projectId,
      storageBucket: FirebaseConfig.storageBucket,
      messagingSenderId: FirebaseConfig.messagingSenderId,
      appId: FirebaseConfig.appId,
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //const appTitle = 'Form Styling Demo';
    return MaterialApp(
      title: 'Win-Edge',
      routes: {
        'tableau': (context) => const TableauAffichage(),
        'succes': (context) => const DialogueText(),
        'investisseur': (context) => const Investisseur(),
      },
      //title: appTitle,
      home: Scaffold(
        backgroundColor: Colors.transparent, // make background transparent
        body: Container(
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
          child: const MyCustomForm(),
        ),

        // body: MyCustomForm(),
      ),
    );
  }
}
