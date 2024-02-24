class Post {
  final int idPost;
  final String photo;
  final String description;
  final String titre;
  final int like;
  final String categorie;
  final String date;
  final String source;
  final int commentaire;
  final String video;

  Post(
      {required this.idPost,
      required this.photo,
      required this.like,
      required this.description,
      required this.titre,
      required this.categorie,
      required this.date,
      required this.video,
      required this.source,
      required this.commentaire});
}

class AutreImage {
  final int idPhoto;
  final String img;
  final int idPost;

  AutreImage({required this.idPhoto, required this.img, required this.idPost});
}

class Commentaire {
  final int idCommentaire;
  final String commentaire;
  final int post;
  final String username;

  Commentaire(
      {required this.idCommentaire,
      required this.commentaire,
      required this.post,
      required this.username});
}

class Username {
  final int idUsername;
  final String username;
  final String photo;

  Username(
      {required this.idUsername, required this.username, required this.photo});
}

class Categorie {
  final int idCategorie;
  final String categorie;

  Categorie({required this.idCategorie, required this.categorie});
}
