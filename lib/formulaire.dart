import 'package:flutter/material.dart';

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final TextEditingController nomController = TextEditingController();
  final TextEditingController prenomController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController numeroTelephoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Center(
          child: Column(
            children: [
              const Center(child: Text('Formulaire')),
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextField(
                  controller: nomController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Entrée votre nom  ',
                  ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextField(
                  controller: prenomController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Prenom ',
                  ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextField(
                  controller: ageController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Age ',
                  ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                  
                    border: OutlineInputBorder(),
                    hintText: 'Adresse e-mail ',
                  ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextField(
                  controller: numeroTelephoneController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Numero Téléphoe  ',
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("tableau");
                  },
                  child: const Text('Valider'))
            ],
          ),
        ),
      ],
    );
  }
}
