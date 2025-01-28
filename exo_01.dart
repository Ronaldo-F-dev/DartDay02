import 'dart:io';

void main() {
  //print("Entrer une lettre : ");
  //String? lettre = stdin.readLineSync();
  String lettre = """Cher agent X,



J'ai aperçu le chat noir    au point de rendez-vous 7. L'agent Johnson était 

également présent.    Le code secret 42 a été activé.



Notre agent de liaison vous contactera à 23h.



    Cordialement""";
  analyserLettre(lettre);
}

analyserLettre(String lettre) {
  protocoleAlpha(lettre);
  //protocoleBeta(lettre);
  //protocoleGamma(lettre);
  //protocoleDelta(lettre);
  //protocoleDeSecurite(lettre);
}

protocoleAlpha(String lettre) {
  int longueurTotale = lettre.length;
  print("La longeur totale est de $longueurTotale caractères.");
  String lettreFormatter = lettre.replaceAll(RegExp(r'\s+'), ' ');
  lettreFormatter = lettreFormatter.replaceAll(RegExp(r'\n\s*\n'), '\n');
  List<String> lettreList = lettreFormatter.split(' ');
  print("Les mots récurrents sont : ");
  Map<String, int> ListRecurrent = {};
  for (var element in lettreList) {
    int nombreDeFois = compterElement(lettreList, element);
    if (nombreDeFois > 1) {
      if (!ListRecurrent.containsKey(element)) {
        ListRecurrent.addAll({element: nombreDeFois});
      }
    }
  }

  ListRecurrent.forEach(
      (element, nombreDeFois) => {print("$element => $nombreDeFois")});
}

int compterElement(List<String> maListe, String element) {
  return maListe.where((item) => item == element).length;
}
