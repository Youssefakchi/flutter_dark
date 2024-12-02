import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';

class ColorPickerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Choisissez une couleur'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(16.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: Colors.primaries.length,
        itemBuilder: (context, index) {
          final color = Colors.primaries[index];
          return GestureDetector(
            onTap: () {
              themeProvider.changePrimaryColor(color); // Applique la couleur sélectionnée
              Navigator.pop(context); // Retour à la page précédente
            },
            child: Container(
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          );
        },
      ),
    );
  }
}
