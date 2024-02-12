class Etudiant {
  // Propriétés
  String nom;
  int age;
  String filiere;

  // Constructeur
  Etudiant(this.nom, this.age, this.filiere);

  // Méthode
  void afficherDetails() {
    print("Nom : $nom");
    print("Âge : $age");
    print("Filière : $filiere");
  }
}

void main() {
  // Création d'un objet de type Étudiant
  Etudiant etudiant1 = Etudiant("Modou", 20, "Informatique");
  Etudiant etudiant2 = Etudiant("Fatou", 22, "Mathématiques");

  // Appel de la méthode pour afficher les détails
  etudiant1.afficherDetails();
  print("---");
  etudiant2.afficherDetails();
}
