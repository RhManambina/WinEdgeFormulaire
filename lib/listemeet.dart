import 'package:flutter/material.dart';
import 'package:mini/firebase/controller.dart';

class TableauAffichage extends StatefulWidget {
  const TableauAffichage({Key? key}) : super(key: key);

  @override
  _TableauAffichageState createState() => _TableauAffichageState();
}

class _TableauAffichageState extends State<TableauAffichage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: FutureBuilder<List<Map<String, dynamic>>>(
        future: MyFormController.getUsers(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Erreur: ${snapshot.error}');
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Text('Aucune donnée à afficher.');
          } else {
            List<Map<String, dynamic>> users = snapshot.data!;

            return SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                  width: 70,
                                  height: 70,
                                  child: Image.asset('assets/Logo.png')),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Listes ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    DataTable(
                      columns: const [
                        DataColumn(
                            label: Text('Nom',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20))),
                        DataColumn(
                            label: Text('Prenom',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20))),
                        DataColumn(
                            label: Text('Age',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20))),
                        DataColumn(
                            label: Text('E-mail',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20))),
                        DataColumn(
                            label: Text('Numero Télephone',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20))),
                        DataColumn(
                            label: Text(
                                'Inscription meet présentation d\'un concept explosif',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20))),
                      ],
                      rows: users.map((user) {
                        return DataRow(cells: [
                          DataCell(Text(user['nom'] ?? '')),
                          DataCell(Text(user['prenom'] ?? '')),
                          DataCell(Text(user['age']?.toString() ?? '')),
                          DataCell(Text(user['email'] ?? '')),
                          DataCell(Text(user['numeroTelephone'] ?? '')),
                          DataCell(Text(user['info'] ?? '')),
                        ]);
                      }).toList(),
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
