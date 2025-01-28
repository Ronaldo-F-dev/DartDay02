import 'dart:math';

void main() {
  calculerTrajet(56);
}

void calculerTrajet(int distance) {
  protocolEnergique(distance);
  //protocolDeGestionEnergie(distance);
  //protocolDePointDeControl(distance);
  //protocolDeSecurite(distance);
}

void protocolEnergique(int distance) {
  if (distance < 0) {
    print("Distance invalide !");
    return;
  }

  if (distance % 2 == 0) {
    print("Activation mode Route rapide");
  } else {
    print("Activation mode Route éco");
  }
  int quotient;
  if (distance % 10 == 0) {
    quotient = (distance / 10).floor() - 1;
  } else {
    quotient = (distance / 10).floor();
  }
  print("$quotient recharge(s) + charge initiale");
}
