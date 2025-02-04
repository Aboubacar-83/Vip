import 'package:flutter/material.dart';
import 'package:vip/produits/achat.dart';
import 'package:vip/produits/stock.dart';
import 'package:vip/produits/vente.dart';

class Produits extends StatefulWidget {
  const Produits({super.key});

  @override
  State<Produits> createState() => _ProduitsState();
}

class _ProduitsState extends State<Produits> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Mon store ")),
          titleTextStyle: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
          backgroundColor: Colors.blueAccent,
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                title: const Text("Stock"),
                leading: Icon(Icons.shop),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Stock(),
                      ));
                },
              ),
              ListTile(
                leading: const Icon(Icons.shopping_bag),
                title: const Text("Achat"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TablePageState(),
                      ));
                },
              ),
              ListTile(
                title: const Text("Vente"),
                leading: const Icon(Icons.shopping_basket_rounded),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Vente(),
                      ));
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    width: 450,
                    height: 450,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/1fe1bf5b-0bbc-4575-91a1-22ac5b09e643.jpeg"),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    width: 450,
                    height: 450,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/802ce284-9780-4147-bcc9-02b4c028f06a.jpeg"),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    width: 450,
                    height: 450,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/c13ea196-3f2d-4998-b63d-93d5b44fa899.jpeg"),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    width: 450,
                    height: 450,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/f1ac1248-1223-47ea-96fd-1f64d5ca47f7.jpeg"),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    width: 450,
                    height: 450,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/e37641a9-5009-4119-8a9d-aecdd881773b.jpeg"),
                            fit: BoxFit.cover /*Occuper l'espace disponible*/)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    width: 450,
                    height: 450,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/CLEAN ASICS GEL NYC.jpeg"),
                            fit: BoxFit.cover /*Occuper l'espace disponible*/)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    width: 450,
                    height: 450,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/Bottes d'hiver tactiques militaires extrêmes - Résistance et protection - Projet Paris - Semelle antidérapante - Bruin _ 39.jpeg"),
                            fit: BoxFit.cover /*Occuper l'espace disponible*/)),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
