import 'package:flutter/material.dart';
import 'package:mini/firebase/controller.dart';

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
  final TextEditingController numeroTelephoneController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Center(
                    child: Text(
                  'Inscription meet présentation d\'un concept explosif',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                )),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 800,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextField(
                      controller: nomController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Nom  ',
                        hintStyle: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 800,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextField(
                      controller: prenomController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Prenom ',
                        hintStyle: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 800,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextField(
                      controller: ageController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Age ',
                        hintStyle: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 800,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Adresse e-mail ',
                        hintStyle: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 800,
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 16),
                      child: TextField(
                        controller: numeroTelephoneController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Numero Téléphone  ',
                          hintStyle:
                              TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      )),
                ),
                Container(
                  width: 800,
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 16),
                      child: TextField(
                        controller: numeroTelephoneController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Numero Téléphone  ',
                          hintStyle:
                              TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      )),
                ),
                Container(
                  width: 800,
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 16),
                      child: TextField(
                        maxLines: null,
                        controller: numeroTelephoneController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText:
                              'Par qui vous avez été invité ou comment nous avez connu  ',
                          hintStyle:
                              TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      )),
                ),
                ElevatedButton(
                    onPressed: () {
                      String nom = nomController.text;
                      String prenom = prenomController.text;
                      int age = int.tryParse(ageController.text) ?? 0;
                      String email = emailController.text;
                      String numeroTelephone = numeroTelephoneController.text;
                      MyFormController.addUser(
                          nom, prenom, age, email, numeroTelephone);
                      Navigator.of(context).pushNamed("succes");
                    },
                    child: const Text(
                      'Valider',
                      style: TextStyle(fontSize: 30),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
