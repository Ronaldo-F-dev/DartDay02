void servirCafe(double quantiteCafe) {
  protocoleDeService(quantiteCafe);
  //protocoleDeSecurite(quantiteCafe);
}

void protocoleDeService(double quantiteCafe) {
  int tasses = quantiteCafe.round();
  double tasseEnMl = quantiteCafe * 250;
  int partieEntiere = quantiteCafe.floor();
  double partieDecimale = quantiteCafe - partieEntiere;
  print("Arrondir à la tasse standard la plus proche donne $tasses");
  print("La conversion en mililitres donne : ${tasseEnMl}ml");
  print("$partieEntiere tasse(s) + $partieDecimale");
  print("$quantiteCafe tasses restantes");
}

void main() {
  servirCafe(10.00);
}
