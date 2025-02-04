import 'package:flutter/material.dart';
import 'package:vip/commande.dart';
import 'package:vip/produits/produits.dart';
import 'package:vip/login.dart';

class Acceuil extends StatelessWidget {
  const Acceuil({super.key});

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
            DrawerHeader(
              child: Column(
                children: [
                  Center(
                    child: Container(
                      width: 250,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: const DecorationImage(
                              image: AssetImage("assets/images/Drip PH.jpeg"),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  const Center(child: Text("Vip'Shop")),
                ],
              ),
            ),
            ListTile(
              title: const Text("Acceuil"),
              leading: const Icon(Icons.home),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Acceuil(),
                    ));
              },
            ),
            ListTile(
              title: const Text("Produit"),
              leading: const Icon(Icons.shopping_basket_rounded),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Produits(),
                    ));
              },
            ),
            ListTile(
              title: const Text("Commande"),
              leading: const Icon(Icons.shopping_cart_checkout),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Commande(),
                    ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text(
                "Deconnexion",
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ));
              },
            )
          ],
        ),
      ),
    );
  }
}
