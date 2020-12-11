import 'dart:math';

class Calculadora {
  static num calculaMedida(num a, num b, num c) {
    // a-b
    // c-x
    // x = (b*c)/a
    return num.parse(((b * c) / a).toStringAsFixed(2));
  }

  static String formataCalculo(List<String> valor) {
    var resultado = valor.join(' -> ');
    return resultado;
  }

  static String formatadorFinal(num valor, num resultado, String nomeMedida) {
    return formataCalculo([
      nomeMedida,
      valor.toString(),
      resultado.toString(),
      resultado.round().toString()
    ]);
  }

  static void calculaListaMedidas(Map<String, num> map, num a, num b) {
    map.forEach((key, value) {
      print(Calculadora.formatadorFinal(
          value, Calculadora.calculaMedida(a, b, value), key));
    });
  }

  static num perimetroCirculo(num valor) {
    return (2 * pi * valor);
  }

  static num soma(num x, num y) {
    return x + y;
  }

  static num teoremaDePitagoras(num cateto1, num cateto2) {
    return sqrt((pow(cateto1, 2) + pow(cateto2, 2)));
  }
}
