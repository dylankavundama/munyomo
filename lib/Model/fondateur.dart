class Fondateur {
  int idFondateur;
  String nom;
  String postnom;
  String prenom;
  DateTime dateN;
  String photo;
  String description;

  Fondateur({
    required this.idFondateur,
    required this.nom,
    required this.postnom,
    required this.prenom,
    required this.dateN,
    required this.photo,
    required this.description,
  });

  // factory Fondateur.frmJson(Map<String, dynamic> json) => Fondateur(
  //       idFond  nom: json["nom"   postnom: json["postnom"],   prenom: json["prenom"],
  //       dateN:  photo: json["ph   description: json["descriptio );
}

class Description {
  final int idDescription;
  final String title;
  final int idFondation;

  Description(
      {required this.idDescription,
      required this.title,
      required this.idFondation});
}

class DecriptionDescription {
  final int idDesc;
  final String title;
  final description;
  final int idDescription;

  DecriptionDescription({
    required this.idDesc,
    required this.title,
    required this.description,
    required this.idDescription,
  });
}


  // keytool -genkey -v -keystore C:\Users\Help Me\Desktop>\upload-keystore.jks -storetype JKS -keyalg RSA -keysize 2048 -validity 10000 -alias upload
