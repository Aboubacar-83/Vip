import 'package:flutter/material.dart';

class Stock extends StatefulWidget {
  const Stock({super.key});

  @override
  State<Stock> createState() => _StockState();
}

class _StockState extends State<Stock> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text(
          "Mes stocks",
          style:
              TextStyle(color: Colors.amberAccent, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Table(
              border: TableBorder.all(color: Colors.black38),
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: const [
                TableRow(
                    decoration: BoxDecoration(color: Colors.brown),
                    children: [
                      TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("MARQUE"),
                          )),
                      TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("PRIX_UNITAIRE"),
                          )),
                      TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("QUANTITE"),
                          ))
                    ]),
                TableRow(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 226, 159, 159)),
                    children: [
                      TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Nike_CH",
                              style: TextStyle(color: Colors.white),
                            ),
                          )),
                      TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("12000F",
                                style: TextStyle(color: Colors.white)),
                          )),
                      TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("12",
                                style: TextStyle(color: Colors.white)),
                          ))
                    ]),
                TableRow(
                    decoration:
                        BoxDecoration(color: Color.fromARGB(255, 233, 80, 192)),
                    children: [
                      TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "T'Shirt_ORI",
                              style: TextStyle(color: Colors.white),
                            ),
                          )),
                      TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("10000F",
                                style: TextStyle(color: Colors.white)),
                          )),
                      TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("24",
                                style: TextStyle(color: Colors.white)),
                          ))
                    ]),
                TableRow(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 226, 159, 159)),
                    children: [
                      TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Mocassin",
                              style: TextStyle(color: Colors.white),
                            ),
                          )),
                      TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("9000F",
                                style: TextStyle(color: Colors.white)),
                          )),
                      TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("10",
                                style: TextStyle(color: Colors.white)),
                          ))
                    ]),
                TableRow(
                    decoration:
                        BoxDecoration(color: Color.fromARGB(255, 233, 80, 192)),
                    children: [
                      TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Kepi",
                              style: TextStyle(color: Colors.white),
                            ),
                          )),
                      TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("2000F",
                                style: TextStyle(color: Colors.white)),
                          )),
                      TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("30",
                                style: TextStyle(color: Colors.white)),
                          ))
                    ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
