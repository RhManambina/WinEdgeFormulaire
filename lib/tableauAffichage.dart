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
    return FutureBuilder<List<Map<String, dynamic>>>(
      future: MyFormController.getUsers(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Erreur: ${snapshot.error}');
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return Text('Aucune donnée à afficher.');
        } else {
          List<Map<String, dynamic>> users = snapshot.data!;

          return DataTable(
            columns: [
              DataColumn(label: Text('Nom')),
              DataColumn(label: Text('Prenom')),
              DataColumn(label: Text('Age')),
              DataColumn(label: Text('E-mail')),
              DataColumn(label: Text('Numero Télephone')),
            ],
            rows: users.map((user) {
              return DataRow(cells: [
                DataCell(Text(user['nom'] ?? '')),
                DataCell(Text(user['prenom'] ?? '')),
                DataCell(Text(user['age']?.toString() ?? '')),
                DataCell(Text(user['email'] ?? '')),
                DataCell(Text(user['numeroTelephone'] ?? '')),
              ]);
            }).toList(),
          );
        }
      },
    );
  }
}
