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

void enregistrerExplorateur(String nomLieu, String explorateur) {
  for (var lieu in carteTresor) {
    if (lieu["nom"] == nomLieu) {
      List<String> explorateurs = List<String>.from(lieu["explorateurs"]);
      lieu["explorateurs"] = explorateurs;
      if (!explorateurs.contains(explorateur)) {
        explorateurs.add(explorateur);
        print("$explorateur a visité $nomLieu.");
      }
      return;
    }
  }
  print("Erreur : Lieu introuvable.");
}

void analyserIndices() {
  List<String> alertes = ["danger", "disparu", "interdit", "maudit"];

  for (var lieu in carteTresor) {
    String description = lieu["description"].toLowerCase();
    if (alertes.any((mot) => description.contains(mot))) {
      print("⚠️ Alerte sur '${lieu["nom"]}' : ${lieu["description"]}");
    }
  }
}

void afficherCarte() {
  if (carteTresor.isEmpty) {
    print("La carte est vide.");
  } else {
    print("\n🌍 Carte des lieux :");
    for (var lieu in carteTresor) {
      print(
          "📍 ${lieu["nom"]} | Distance : ${lieu["distance"]}km | Explorateurs : ${lieu["explorateurs"]}");
    }
  }
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
