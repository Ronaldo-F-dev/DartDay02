void gererPlaylist(List<String> chansons) {
  print("Playlist actuelle : $chansons");

  chansons = ajouterChanson(chansons, "Vêtements");
  //chansons = supprimerChanson(chansons, "Demarrer");
  //chansons = trierPlaylist(chansons, true); // true pour ordre A→Z
  //afficherStats(chansons, [3.5, 4.2, 5.0]); // Durées fictives
  //rechercherDoublon(chansons, "Pitbull");
  //accederPremiereDerniere(chansons);
  //chansons = shufflePlaylist(chansons);
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

void main() {
  // Exemple d'utilisation
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
