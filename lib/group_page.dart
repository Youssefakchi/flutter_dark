import 'package:flutter/material.dart';

class GroupPage extends StatelessWidget {
  // Liste des membres avec uniquement les noms
  final List<String> members = [
    'Youssef Akchi',
    'Fatma Felhi',
    'Iheb Touaibi',
    'Wassim Mejri',
    'Chayma Kamel',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Membres du groupe'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Retour à la page précédente
          },
        ),
      ),
      body: ListView.builder(
        itemCount: members.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.person), // Affichage de l'icône à la place de l'image
            title: Text(members[index]), // Affichage du nom du membre
          );
        },
      ),
    );
  }
}
