class Etudiant {
  // Propriétés
  String nom;
  int age;
  String filiere;
  String adresse;

  // Constructeur
  Etudiant(this.nom, this.age, this.filiere, this.adresse);

  // Méthode
  void sePresenter() {
    print("Je mappelle $nom, jai $age et je suis en $filiere");
  }

  void ouJhabite() {
    print("Je mappelle $nom et Jhabite à : $adresse");
  }
}

void main() {
  // Création d'un objet de type Étudiant
  Etudiant etudiant1 = Etudiant("Modou", 20, "Informatique", "UGB");
  Etudiant etudiant2 = Etudiant("Astou", 28, "Geo", "Saint-Louis");

  // Appel de la méthode pour afficher les détails
  etudiant1.sePresenter();
  print("---");
  etudiant2.ouJhabite();
}
