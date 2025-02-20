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
  //protocoleAlpha(lettre);
  protocoleBeta(lettre);
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
      (element, nombreDeFois) => print("$element => $nombreDeFois"));
}

void protocoleBeta(String lettre) {
  String lettreReversed = lettre.split('').reversed.join();
  print("La lettre $lettre renversée donne $lettreReversed");
  String lettreReplaced =
      lettre.replaceAllMapped(RegExp(r'\b[Aa]gent\b'), (match) {
    String original = match.group(0)!;
    if (original[0] == original[0].toUpperCase()) {
      return "Espion";
    } else {
      return "espion";
    }
  });
  print("Le remplacement des occurences donne : $lettreReplaced");
}

protocoleGamma(String lettre) {
  if (starWithCher(lettre)) {
    print("La lettre débute par Cher.");
  } else {
    print("La lettre ne débute pas par Cher.");
  }
  if (endWithCordialement(lettre)) {
    print("La lettre termine par Cordialement.");
  } else {
    print("La lettre ne termine pas par Cordialement.");
  }
  print("Le document nettoyé est : ${nettoyerDocument(lettre)}");
}

void protocoleDelta(String message) {
  print("La version du message en minuscule est : ${message.toLowerCase()}");
  print("La version du message en majuscule est : ${message.toUpperCase()}");
  if (message.length >= 43) {
    print("Le caractère à l'index 42 est ${message[42]}");
  }
}

protocoleDeSecurite(String message) {
  if (letterIsNull(message)) {
    print("Le message est vide après suppression des espaces");
  }
  List messageList = message.split("");
  for (int i = 0; i < messageList.length; i++) {
    if (int.tryParse(messageList[i]) == true) {
      messageList[i] = int.parse(messageList[i]);
    }
  }
  print("Le texte après la convertion est :${messageList.join()} ");
}

bool starWithCher(String lettre) {
  return lettre.startsWith("Cher");
}

bool endWithCordialement(String lettre) {
  return lettre.endsWith("Cordialement");
}

String nettoyerDocument(String document) {
  return document.trim().replaceAll(RegExp(r'\s+'), ' ');
}

bool letterIsNull(String lettre) {
  String lettreFormatter = lettre.replaceAll(RegExp(r'\s+'), ' ');
  return lettreFormatter.replaceAll(RegExp(r'\n\s*\n'), '\n').isEmpty;
}

int compterElement(List<String> maListe, String element) {
  return maListe.where((item) => item == element).length;
}
