import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vip/acceuil.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //declaration des variables
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  bool visibly = true;
//SharedReference
  @override
  void initState() {
    super.initState();
    renseignementDonnee();
  }

//initialisation des donnees dans sharedPreference
  renseignementDonnee() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      emailController.text = prefs.getString('email') ?? '';
      passController.text = prefs.getString('password') ?? '';
    });
  }

//sauvegardement des donnees
  enregistrementDonnee() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('email', emailController.text);
    await prefs.setString('password', passController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: FadeInUp(
        duration: const Duration(milliseconds: 1600),
        child: Container(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Column(children: [
                const SizedBox(
                  height: 100,
                ),
                Center(
                  child: Stack(
                    children: [
                      FadeInUp(
                        duration: const Duration(microseconds: 1600),
                        child: SizedBox(
                          height: 50,
                          width: 400,
                          child: TextFormField(
                            controller: emailController,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide.none,
                                ),
                                fillColor: Colors.grey.shade200,
                                filled: true,
                                suffixIcon: const Icon(
                                  Icons.email,
                                  size: 30,
                                  color: Colors.red,
                                ),
                                hintText: "Entrez votre mail",
                                hintStyle: GoogleFonts.poppins(
                                  fontSize: 13,
                                  letterSpacing: 1,
                                  color: Colors.grey,
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 50,
                        width: 400,
                        child: FadeInUp(
                          duration: const Duration(microseconds: 2600),
                          child: TextFormField(
                            controller: passController,
                            obscureText: visibly,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide.none,
                                ),
                                fillColor: Colors.grey.shade200,
                                filled: true,
                                suffixIcon: InkWell(
                                    onTap: () => setState(() {
                                          visibly = !visibly;
                                        }),
                                    child: visibly
                                        ? const Icon(
                                            Icons.visibility_off,
                                            color: Colors.red,
                                          )
                                        : const Icon(
                                            Icons.visibility,
                                            color: Colors.red,
                                          )),
                                hintText: "Mot de passe",
                                hintStyle: GoogleFonts.poppins(
                                  fontSize: 13,
                                  letterSpacing: 1,
                                  color: Colors.grey,
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                    child: Stack(children: [
                  FadeInUp(
                    child: TextButton(
                      onPressed: () {
                        enregistrementDonnee();
                        if ((emailController.text.isEmpty) &&
                            (passController.text.isEmpty)) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text(
                                      "Mot de passe ou login non renseigne")));
                        }
                        if ((emailController.text == "examle@gmail.com") &&
                            (passController.text == "1234,.@qwerty")) {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Acceuil()));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content:
                                      Text("Mot de passe ou login incorrect")));
                        }
                      },
                      child: const Text("Connexion",
                          style: TextStyle(
                            color: Colors.pink,
                          )),
                    ),
                  )
                ]))
              ]),
            ),
          ),
        ),
      ),
    ));
  }
}
