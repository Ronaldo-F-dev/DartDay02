import 'dart:math';

void main() {
  calculerTrajet(56);
}

void calculerTrajet(int distance) {
  //protocolEnergique(distance);
  //protocolDeGestionEnergie(distance);
  protocolDePointDeControl(distance);
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

void protocolDeGestionEnergie(int distance) {
  double consommation = (distance * distance).toDouble();
  if (distance < 0) {
    print("Distance invalide !");
    return;
  }
  if (distance > 50) {
    consommation += (consommation * 0.2);
  }
  print("Consommation estimée : $consommation unités énergétiques");
}

void protocolDePointDeControl(int distance) {
  if (distance < 0) {
    print("Distance invalide !");
    return;
  }
  List<int> pointsRavitaillement = [];
  for (int km = 5; km <= distance; km += 5) {
    pointsRavitaillement.add(km);
  }

  List<String> pointsFormates = pointsRavitaillement.map((point) {
    return point.toString().padLeft(3, '0') + " km";
  }).toList();
  print("Points de ravitaillement : $pointsRavitaillement");
  print("Formaté pour LED : $pointsFormates");
}
