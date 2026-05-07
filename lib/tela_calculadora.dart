import 'package:flutter/material.dart';
import 'logica_calculadora.dart';

class TelaCalculadora extends StatefulWidget {
  const TelaCalculadora({super.key});

  @override
  State<TelaCalculadora> createState() => _TelaCalculadoraState();
}

class _TelaCalculadoraState extends State<TelaCalculadora> {

  LogicaCalculadora calculadora = LogicaCalculadora();

  Widget boton(String texto, {Color color = Colors.white}) {

    return Expanded(
      child: Padding(

        padding: const EdgeInsets.all(5),

        child: ElevatedButton(

          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            foregroundColor: Colors.black,
          ),

          onPressed: () {

            setState(() {
              calculadora.presionarBoton(texto);
            });

          },

          child: Text(

            texto,

            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: const Color(0xFF1B2134),

      body: SafeArea(

        child: Center(

          child: SizedBox(

            width: 400,

            child: Column(

              mainAxisSize: MainAxisSize.min,

              children: [

                Container(

                  alignment: Alignment.centerRight,

                  margin: const EdgeInsets.all(10),

                  padding: const EdgeInsets.all(20),

                  width: double.infinity,
                  height: 90,

                  color: const Color(0xFF20283D),

                  child: Text(

                    calculadora.pantalla,

                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                    ),
                  ),
                ),

                Row(
                  children: [
                    boton("7"),
                    boton("8"),
                    boton("9"),
                    boton(
                      "DEL",
                      color: const Color(0xFF647199),
                    ),
                  ],
                ),

                Row(
                  children: [
                    boton("4"),
                    boton("5"),
                    boton("6"),
                    boton("+"),
                  ],
                ),

                Row(
                  children: [
                    boton("1"),
                    boton("2"),
                    boton("3"),
                    boton("-"),
                  ],
                ),

                Row(
                  children: [
                    boton("."),
                    boton("0"),
                    boton("/"),
                    boton("*"),
                  ],
                ),

                Row(
                  children: [
                    boton(
                      "RESET",
                      color: const Color(0xFF647199),
                    ),

                    boton(
                      "=",
                      color: const Color(0xFFE94B3C),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}