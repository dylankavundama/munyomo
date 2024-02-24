class Storie {
    int idStorie;
    String photo;

    Storie({
        required this.idStorie,
        required this.photo,
    });

    factory Storie.fromJson(Map<String, dynamic> json) => Storie(
        idStorie: json["id_storie"],
        photo: json["photo"],
    );
}
