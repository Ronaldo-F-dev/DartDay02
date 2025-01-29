List<Map<String, dynamic>> carteTresor = [];

void ajouterLieu(String nom, String description, double distance) {
  carteTresor.add({
    "nom": nom,
    "description": description,
    "distance": distance,
    "explorateurs": []
  });
  print("Lieu ajouté : $nom");
}

void retirerLieu(String nom) {
  carteTresor.removeWhere((lieu) => lieu["nom"] == nom);
  print("Lieu retiré : $nom");
}

void main() {
  ajouterLieu("Île Perdue", "Un lieu mystérieux avec un danger caché.", 15.3);
  ajouterLieu("Temple Maudit",
      "Un ancien temple où des explorateurs ont disparu.", 25.7);
  ajouterLieu("Plage Ensoleillée", "Un paradis tropical paisible.", 5.0);
  //enregistrerExplorateur("Île Perdue", "GABIAM Honorine");
  //enregistrerExplorateur("Temple Maudit", "AWADEME Ronaldo");
  //analyserIndices();
  //afficherCarte();
  retirerLieu("Temple Maudit");
  //afficherCarte();
}
