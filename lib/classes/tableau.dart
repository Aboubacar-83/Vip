import 'package:flutter/material.dart';
import 'package:vip/classes/attribut.dart';
import 'package:editable/editable.dart';

class _TablePageState extends StatelessWidget {
  final Tables table;
  const _TablePageState({super.key, required this.table});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            table.marque,
          )),
      body: Editable(
        columns: headers,
        rows: rows,
        showCreateButton: true,
        tdStyle: TextStyle(fontSize: 20),
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
List rows = [
  {
    "marque": 'James Peter',
    "date": '01/08/2007',
    "Prix": 'March',
    "Classe": 'beginner',
    "Quantité": ''
  },
  {
    "marque": 'Okon Etim',
    "date": '09/07/1889',
    "Prix": 'January',
    "Classe": 'completed',
    "Quantité": ''
  },
  {
    "marque": 'Samuel Peter',
    "date": '11/11/2002',
    "Prix": 'April',
    "Classe": 'intermediate',
    "Quantité": ''
  },
  {
    "marque": 'Udoh Ekong',
    "date": '06/3/2020',
    "Prix": 'July',
    "Classe": 'beginner',
    "Quantité": ''
  },
  {
    "marque": 'Essien Ikpa',
    "date": '12/6/1996',
    "Prix": 'June',
    "Classe": 'completed',
    "Quantité": ''
  },
];

//Headers or Columns
List headers = [
  {"title": 'Marque', 'index': 1, 'key': 'Marque'},
  {"title": 'Prix', 'index': 2, 'key': 'Prix'},
  {"title": 'Quantité', 'index': 3, 'key': 'Quqntité'},
  {"title": 'Classe', 'index': 4, 'key': 'Classe'},
  {"title": 'Date', 'index': 5, 'key': 'Date'},
];
