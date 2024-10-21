import 'package:beatconnect_app/ui/widgets/button_gradient.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui'; // Para el efecto de desenfoque

class IntroView extends StatefulWidget {
  const IntroView({super.key});

  @override
  State<IntroView> createState() => _IntroViewState();
}

class _IntroViewState extends State<IntroView> {
  @override
  Widget build(BuildContext context) {
    // Calcular el 2% de la altura de la pantalla
    double spaceHeight = MediaQuery.of(context).size.height * 0.02;

    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFF1B191D),
        image: const DecorationImage(
          image: AssetImage("assets/img/concept_art_intro.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          // Efecto de desenfoque que ocupa toda la pantalla
          Container(
            height: double.infinity,
            child: ListView.builder(
              itemCount: MediaQuery.of(context).size.height.toInt(),
              itemBuilder: (context, index) {
                return Container(
                  height: 1, // Cada elemento tiene 1 pixel de alto
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: (index / MediaQuery.of(context).size.height) *
                          10.0, // Aumentar de 0 a 10
                      sigmaY:
                          (index / MediaQuery.of(context).size.height) * 10.0,
                    ),
                  ),
                );
              },
            ),
          ),
          // Gradiente vertical
          Container(
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(
                      0.0), // Totalmente transparente en la parte superior
                  Colors.black
                      .withOpacity(0.9), // Más oscuro en la parte inferior
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          // Efecto de desenfoque en el gradiente
          BackdropFilter(
            filter: ImageFilter.blur(
                sigmaX: 1.0,
                sigmaY: 1.0), // Ajusta el valor del desenfoque aquí
            child: Container(
              height: double.infinity,
              color:
                  Colors.transparent, // Necesario para que el filtro funcione
            ),
          ),
          // Contenido inferior
          Align(
            alignment: Alignment.bottomCenter, // Alineado en la parte inferior
            child: Container(
              height: MediaQuery.of(context).size.height *
                  0.4, // 40% de la altura de la pantalla
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "BeatConnect",
                      style: TextStyle(
                        fontFamily:
                            'Omegle', // Nombre de la familia que definiste en pubspec.yaml
                        color: const Color.fromARGB(255, 5, 151, 242),
                        fontWeight: FontWeight.normal,
                        fontSize: 40,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    SizedBox(height: spaceHeight), // Espacio entre elementos
                    Text(
                      "Crea, comparte y conecta al ritmo del mundo.",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: MediaQuery.of(context).size.width * 0.045,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    SizedBox(height: spaceHeight), // Espacio entre elementos
                    ButtonGradient(
                        icon: FontAwesomeIcons.angleRight, onPressed: () {})
                    // Puedes agregar más contenido aquí
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
