import 'dart:math';

class GeradorNumeroAleatorio{
    static int gerarNumeroAleatorio(int numMax) {
    Random numeroAleatorio = Random();
    return numeroAleatorio.nextInt(numMax);
  }
}