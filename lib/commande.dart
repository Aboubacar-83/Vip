import 'package:flutter/material.dart';
import 'package:editable/editable.dart';

class Commande extends StatelessWidget {
  const Commande({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Editable(
        columns: headers,
        rows: rows,
        showCreateButton: true,
        tdStyle: const TextStyle(fontSize: 20),
        showSaveIcon: false,
        borderColor: Colors.grey.shade300,
        onSubmitted: (value) {
          print(value);
        },
        onRowSaved: (value) {
          //added line
          print(value); //prints to console
        },
      ),
    );
  }
}

//row data
List rows = [];

//Headers or Columns
List headers = [
  {"title": 'Marque', 'index': 1, 'key': 'Marque'},
  {"title": 'Prix', 'index': 2, 'key': 'Prix'},
  {"title": 'Quantité', 'index': 3, 'key': 'Quqntité'},
  {"title": 'Classe', 'index': 4, 'key': 'Classe'},
  {"title": 'Date', 'index': 5, 'key': 'Date'},
];
