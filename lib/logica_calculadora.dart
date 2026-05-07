class LogicaCalculadora {

  String pantalla = "0";

  double numero1 = 0;

  String operacion = "";

  void presionarBoton(String texto) {

    if (texto == "RESET") {

      pantalla = "0";
      numero1 = 0;
      operacion = "";

    }

    else if (texto == "DEL") {

      if (pantalla.length > 1) {

        pantalla = pantalla.substring(0, pantalla.length - 1);

      } else {

        pantalla = "0";

      }

    }

    else if (texto == "+" ||
        texto == "-" ||
        texto == "*" ||
        texto == "/") {

      numero1 = double.parse(pantalla);

      operacion = texto;

      pantalla = "0";

    }

    else if (texto == "=") {

      double numero2 = double.parse(pantalla);

      double resultado = 0;

      if (operacion == "+") {
        resultado = numero1 + numero2;
      }

      else if (operacion == "-") {
        resultado = numero1 - numero2;
      }

      else if (operacion == "*") {
        resultado = numero1 * numero2;
      }

      else if (operacion == "/") {
        resultado = numero1 / numero2;
      }

      pantalla = resultado.toString();

    }

    else {

      if (pantalla == "0") {

        pantalla = texto;

      } else {

        pantalla += texto;

      }

    }

  }

}