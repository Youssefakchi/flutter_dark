import 'package:flutter/material.dart';
import 'package:flutter_dark/pages/home_page.dart'; // Import de la page d'accueil
import 'package:flutter_dark/pages/group_page.dart'; // Import de la page des membres du groupe
import 'package:provider/provider.dart';
import 'theme_provider.dart'; // Import du fichier theme_provider.dart

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Récupère le ThemeProvider via le Provider
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      themeMode: themeProvider.themeMode, // Applique le mode de thème actuel
      theme: ThemeData.light(), // Thème clair
      darkTheme: ThemeData.dark(), // Thème sombre
      initialRoute: '/', // Route initiale
      routes: {
        '/': (context) => HomePage(), // Page d'accueil
        '/group': (context) => GroupPage(), // Page des membres du groupe
      },
    );
  }
}
