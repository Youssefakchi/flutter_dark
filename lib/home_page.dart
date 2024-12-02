import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme_provider.dart'; // Assure-toi que le ThemeProvider est bien importé

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Projet mobile '),
        actions: [
          IconButton(
            icon: Icon(
              themeProvider.themeMode == ThemeMode.dark
                  ? Icons.dark_mode
                  : Icons.light_mode,
            ),
            onPressed: themeProvider.toggleTheme, // Bascule entre mode clair et sombre
          ),
        ],
      ),
      body: TweenAnimationBuilder(
        duration: Duration(seconds: 30),
        tween: ColorTween(
          begin: themeProvider.primaryColor,
          end: themeProvider.backgroundColor,
        ),
        builder: (context, Color? color, child) {
          return Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [color!, Colors.black],
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/colorPicker');
                    },
                    child: Text('Personnaliser la couleur'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/group');
                    },
                    child: Text('Voir les membres du groupe'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
