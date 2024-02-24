import '../MODEL/fondateur.dart';

List<Fondateur> fondateurList = [
  Fondateur(
      idFondateur: 1,
      nom: 'PATRICK',
      postnom: 'MUNYOMO',
      prenom: '',
      dateN: DateTime.now(),
      photo: 'assets/h.jpg',
      description:
          "Petit à petit l'oiseau fait son nid , le projet c est pour 42 #véhicules que la fondation doit mettre à la disposition de la population de #Goma et ses #environs . Tout gratos")
];

List<Description> descriptionList = [
  Description(
      idDescription: 1,
      title: 'Qui est Patrick Munyomo',
      //Commission : ATI-NTIC \nDébut du mandat actuel : 13/02/2019",
      idFondation: 1),
  // Description(idDescription: 2, title: 'Soutien aux FARDC', idFondation: 1),
  // Description(idDescription: 3, title: 'Actions pour le sport', idFondation: 1),
  Description(
      idDescription: 4,
      title: 'Actions au parlement',
      // description: " \n \nUne question orale avec débat à l'attention de Modeste Mutinga, ministre des Affaires sociales, relative à la gestion des fonds alloués aux sinistrés de l’éruption du volcan de Nyiragongo \nLe député Patrick Munyomo Basilwange a adressé, le samedi 23 octobre, une question orale avec débat à Modeste Mutinga, ministre des Affaires sociales et Solidarité nationale. Elle se rapporte à la gestion des fonds alloués aux sinistrés de l’éruption du volcan de Nyiragongo. L’élu de Goma attend de ce membre du gouvernement les réponses à des questions suivantes Quel est le montant global alloué par le gouvernement pour la construction des maisons des sinistrés de l'éruption du volcan de Nyiragongo ?\nQuel a été le coût total de la construction d’une maison et combien de maisons ont-elles été  construites et remises aux bénéficiaires ?\nExiste-t-il un tableau récapitulatif dans lequel sont mentionnés tous les partenaires avec leurs contributions matérielles ou financières ?\nComment les différents fonds des partenaires destinés à la prise en charge des sinistrés ont-ils été utilisés ?\nLe 22 mai 2021, l'éruption du volcan Nyiragongo avait causé 32 morts, détruit plusieurs centaines de maisons et entraîné le déplacement de dizaines de milliers de personnes.  Le gouvernement avait alors lancé un appel à la solidarité nationale en faveur des victimes.",
      idFondation: 1),
];

List<DecriptionDescription> descList = [
  DecriptionDescription(
      idDesc: 1,
      title: 'Nom complet',
      description: 'Patrick Munyomo Basilwango',
      idDescription: 1),
  DecriptionDescription(
      idDesc: 2,
      title: 'Date et lieu de naissance',
      description: '17/11/1981 à Bukavu',
      idDescription: 1),
  DecriptionDescription(
      idDesc: 3,
      title: 'Province et Circonscription',
      description: 'Nord-Kivu, Goma Ville',
      idDescription: 1),
  DecriptionDescription(
      idDesc: 4,
      title: 'Organisation politique et Fonction',
      description: 'AFDC-A Député',
      idDescription: 1),
  DecriptionDescription(
      idDesc: 5,
      title: 'Commission et Début du mandat actuel',
      description: 'ATI-NTIC et 13/02/2019',
      idDescription: 1),
  DecriptionDescription(
      idDesc: 6,
      title:
          "Proposition de loi modifiant et complétant la loi-cadre portant relative à l'enseignement national",
      description:
          "Le député Patrick Munyomo a déposé, le jeudi 14 décembre, la proposition de loi modifiant et complétant la loi cadre sur l'enseignement national. Selon l’élu de Goma, cette proposition de loi vise l'amélioration des conditions de vie des enseignants des établissements publics et la valorisation de cette profession.",
      idDescription: 4),
];
