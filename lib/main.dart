import 'package:flutter/material.dart';
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
      },
      //title: appTitle,
      home: const Scaffold(
        backgroundColor: Colors.blue,
        body: MyCustomForm(),
      ),
    );
  }
}
