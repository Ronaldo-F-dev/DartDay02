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

void protocoleDeSecurite(double quantite) {
  if (quantite < 0.1 || quantite > 10) {
    print("Erreur : La quantité doit être entre 0.1 et 10 tasses !");
    return;
  }
  if (quantite < 1) {
    print(
        "Quantité insuffisante : $quantite tasse(s). C'est une petite quantité.");
  } else if (quantite > 1 && quantite <= 5) {
    print(
        "Quantité modérée : $quantite tasse(s). Vous avez une quantité raisonnable.");
  } else {
    print(
        "Grande quantité : $quantite tasse(s). Vous avez une grande commande.");
  }

  // Comparaison des commandes avec une tolérance de 0.05 tasse
  if (comparaisonQuantites(quantite)) {
    print("Les quantités sont égales (tolérance de 0.05 tasse).");
  } else {
    print("Les quantités sont différentes.");
  }
}

bool comparaisonQuantites(double quantite) {
  double tolerance = 0.05;

  double limiteMin = 0.1 - tolerance;
  double limiteMax = 10 + tolerance;

  return quantite >= limiteMin && quantite <= limiteMax;
}

void main() {
  servirCafe(10.00);
}
