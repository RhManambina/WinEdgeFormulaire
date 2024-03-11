import 'package:flutter/material.dart';

// class TableauAffichage extends StatelessWidget {
//   const TableauAffichage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [Text('Liste des utilisateurs : ')],
//     );
//   }
// }

class TableauAffichage extends StatelessWidget {
  const TableauAffichage({super.key});

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: [
        DataColumn(label: Text('Nom')),
        DataColumn(label: Text('Prenom')),
        DataColumn(label: Text('Age')),
        DataColumn(label: Text('E-mail')),
        DataColumn(label: Text('Numero Télephone')),
      ],
      rows: [
        DataRow(cells: [
          DataCell(Text('John')),
          DataCell(Text('25')),
          DataCell(Text('New York')),
          DataCell(Text('25')),
          DataCell(Text('New York')),
        ]),
      ],
    );
  }
}
