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
  final TextEditingController infoController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Center(
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(255, 145, 185, 205), // Original color
                      Color.fromARGB(255, 119, 135, 239),
                      Color.fromARGB(255, 157, 160, 176),
                      Color.fromARGB(255, 146, 185, 252),
                      Color.fromARGB(255, 134, 182, 223),
                    ],
                  )),
              width: 450,
              //  color: const Color.fromARGB(179, 129, 206, 245),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                      child: Column(
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      const Center(
                          child: Text(
                        'Inscription meet  ',
                        // 'présentation d\'un concept explosif'
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      )),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 250,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 16),
                          child: TextField(
                            controller: nomController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0))),
                              hintText: 'Nom : ',
                              hintStyle:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 250,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 16),
                          child: TextField(
                            controller: prenomController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0))),
                              hintText: 'Prenom :',
                              hintStyle:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 250,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 16),
                          child: TextField(
                            controller: ageController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0))),
                              hintText: 'Age :',
                              hintStyle:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 250,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 16),
                          child: TextField(
                            controller: emailController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0))),
                              hintText: 'Adresse e-mail :',
                              hintStyle:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 250,
                        child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 16),
                            child: TextField(
                              controller: numeroTelephoneController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20.0))),
                                hintText: 'Numero Téléphone : ',
                                hintStyle: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            )),
                      ),
                      Container(
                        width: 250,
                        child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 16),
                            child: TextField(
                              controller: numeroTelephoneController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20.0))),
                                hintText: 'Pays :',
                                hintStyle: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            )),
                      ),
                      Container(
                        width: 250,
                        child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 16),
                            child: TextField(
                              maxLines: null,
                              controller: infoController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20.0))),
                                hintText: 'Invité par :   ',
                                hintStyle: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.end,
                      //   children: [
                      //     ElevatedButton(
                      //         onPressed: () {
                      //           String nom = nomController.text;
                      //           String prenom = prenomController.text;
                      //           int age = int.tryParse(ageController.text) ?? 0;
                      //           String email = emailController.text;
                      //           String numeroTelephone =
                      //               numeroTelephoneController.text;
                      //           String info = infoController.text;
                      //           MyFormController.addUser(nom, prenom, age,
                      //               email, numeroTelephone, info);
                      //           nomController.clear();
                      //           prenomController.clear();
                      //           ageController.clear();
                      //           emailController.clear();
                      //           numeroTelephoneController.clear();
                      //           infoController.clear();
                      //           Navigator.of(context).pushNamed("succes");
                      //         },
                      //         child: const Column(
                      //           crossAxisAlignment: CrossAxisAlignment.end,
                      //           children: [
                      //             Text(
                      //               'Valider',
                      //               style: TextStyle(
                      //                   fontSize: 12, color: Colors.white),
                      //             ),

                      //           ],
                      //         )),
                      //   ],
                      // ),

                      Padding(
                        padding: const EdgeInsets.only(left: 60, right: 20),
                        child: Container(
                          width: 700,
                          child: Align(
                            alignment: Alignment.center,
                            //alignment: Alignment.centerRight,
                            child: ElevatedButton(
                              onPressed: () {
                                String nom = nomController.text;
                                String prenom = prenomController.text;
                                int age = int.tryParse(ageController.text) ?? 0;
                                String email = emailController.text;
                                String numeroTelephone =
                                    numeroTelephoneController.text;
                                String info = infoController.text;
                                MyFormController.addUser(
                                  nom,
                                  prenom,
                                  age,
                                  email,
                                  numeroTelephone,
                                  info,
                                );
                                nomController.clear();
                                prenomController.clear();
                                ageController.clear();
                                emailController.clear();
                                numeroTelephoneController.clear();
                                infoController.clear();
                                Navigator.of(context).pushNamed("succes");
                              },
                              child: Text(
                                'Valider',
                                style: TextStyle(fontSize: 18),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: const Color.fromARGB(
                                    255, 121, 178, 225), // Couleur de fond
                                onPrimary: Colors.white, // Couleur du texte
                                shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(
                        height: 15,
                      ),
                    ],
                  )),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
