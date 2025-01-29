void gererPlaylist(List<String> chansons) {
  print("Playlist actuelle : $chansons");

  //chansons = ajouterChanson(chansons, "Vêtements");
  //chansons = supprimerChanson(chansons, "Demarrer");
  //chansons = trierPlaylist(chansons, true); // true pour ordre A→Z
  //afficherStats(chansons, [3.5, 4.2, 5.0]); // Durées fictives
  //rechercherDoublon(chansons, "Pitbull");
  //accederPremiereDerniere(chansons);
  chansons = shufflePlaylist(chansons);
  //chansons = filtrerPlaylist(chansons, "l");
  //chansons = nettoyerDoublons(chansons);
  //chansons = remixerPlaylist(chansons);
}

List<String> ajouterChanson(List<String> chansons, String nouvelleChanson) {
  chansons.add(nouvelleChanson);
  print("Ajouté : $nouvelleChanson. Playlist : $chansons");
  return chansons;
}

List<String> supprimerChanson(List<String> chansons, String chanson) {
  chansons.remove(chanson);
  print("Supprimé : $chanson. Playlist : $chansons");
  return chansons;
}

List<String> trierPlaylist(List<String> chansons, bool ordreAscendant) {
  chansons.sort((a, b) => ordreAscendant ? a.compareTo(b) : b.compareTo(a));
  print("Playlist triée : $chansons");
  return chansons;
}

void afficherStats(List<String> chansons, List<double> durees) {
  int nombreTotal = chansons.length;
  double dureeMoyenne =
      durees.isNotEmpty ? durees.reduce((a, b) => a + b) / durees.length : 0.0;
  print("Nombre total de chansons : $nombreTotal");
  print("Durée moyenne : ${dureeMoyenne.toStringAsFixed(2)} minutes");
}

void rechercherDoublon(List<String> chansons, String chanson) {
  bool doublon = chansons.where((c) => c == chanson).length > 1;
  print(doublon
      ? "Doublon détecté pour : $chanson"
      : "Pas de doublon pour : $chanson");
}

void accederPremiereDerniere(List<String> chansons) {
  if (chansons.isNotEmpty) {
    print("Première chanson : ${chansons.first}");
    print("Dernière chanson : ${chansons.last}");
  } else {
    print("Playlist vide.");
  }
}

List<String> shufflePlaylist(List<String> chansons) {
  chansons = List.from(chansons.reversed);
  print("Playlist inversée : $chansons");
  return chansons;
}

List<String> filtrerPlaylist(List<String> chansons, String motCle) {
  List<String> resultats =
      chansons.where((chanson) => chanson.contains(motCle)).toList();
  print("Résultats pour '$motCle' : $resultats");
  return resultats;
}

void main() {
  List<String> playlist = [
    "Daddy",
    "Demarrer",
    "Toi as dit",
    "Banger",
    "Pitbull",
    "Gater Nanina",
    "You are not alone",
    "Baby Hello",
    "Aklounon",
    "Jeu",
    "Pitbull"
  ];
  gererPlaylist(playlist);
}
