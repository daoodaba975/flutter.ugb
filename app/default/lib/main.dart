// Importation de la bibliothèque Material Dart, qui fournit des widgets de conception
// basés sur le design system de Material Design.
import 'package:flutter/material.dart';

// La fonction principale main() est le point d'entrée de l'application Flutter.
// Elle exécute la méthode runApp() pour afficher le widget racine de l'application.
void main() {
  // La constante rend l'instance immuable, ce qui améliore les performances.
  runApp(const MyApp());
}

// Définition du widget racine MyApp, qui est un StatelessWidget
// (pas de gestion d'état dans ce widget).
class MyApp extends StatelessWidget {
  // Le constructeur const améliore l'efficacité pour les widgets immuables.
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Retourne un widget MaterialApp, qui est le conteneur principal de l'application.
    return MaterialApp(
      // Titre de l'application, utilisé par certaines plates-formes.
      title: 'App Flutter',

      // Définition du thème de l'application.
      theme: ThemeData(
        // Génère un jeu de couleurs à partir d'une couleur principale (seedColor).
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        // Active l'utilisation de Material Design 3 (MD3).
        useMaterial3: true,
      ),

      // Définit la page d'accueil de l'application.
      // MyHomePage est un StatefulWidget.
      home: const MyHomePage(title: 'App'),
    );
  }
}

// Définition d'un StatefulWidget appelé MyHomePage.
// Ce widget peut changer d'état pendant l'exécution de l'application.
class MyHomePage extends StatefulWidget {
  // Le constructeur prend un paramètre obligatoire title.
  const MyHomePage({super.key, required this.title});

  // La propriété title est utilisée pour afficher un titre sur l'AppBar.
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// La classe _MyHomePageState gère l'état de MyHomePage.
class _MyHomePageState extends State<MyHomePage> {
  // Variable privée pour suivre le nombre de clics sur le bouton.
  int _counter = 0;

  // Méthode pour incrémenter le compteur.
  // Elle utilise setState pour notifier Flutter de mettre à jour l'interface utilisateur.
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Retourne un widget Scaffold, qui est une structure de base pour l'interface utilisateur.
    return Scaffold(
      // AppBar en haut de l'écran, avec un titre dynamique provenant de widget.title.
      appBar: AppBar(
        // Définit une couleur d'arrière-plan basée sur le thème.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      // Le corps principal de l'interface utilisateur.
      body: Center(
        // Utilise une colonne pour disposer les widgets verticalement.
        child: Column(
          // Aligne les widgets au centre de la colonne.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Texte statique affichant un message à l'utilisateur.
            const Text(
              'Vous avez appuyé sur le bouton :',
            ),
            // Texte dynamique affichant la valeur actuelle du compteur.
            Text(
              '$_counter', // Affiche la valeur de _counter.
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),

      // Bouton flottant pour interagir avec l'utilisateur.
      floatingActionButton: FloatingActionButton(
        // Action déclenchée lorsqu'on appuie sur le bouton.
        onPressed: _incrementCounter,
        // Texte d'information affiché lorsqu'on survole le bouton.
        tooltip: 'Incrementer',
        // Icône du bouton, ici un "+".
        child: const Icon(Icons.add),
      ),
    );
  }
}
