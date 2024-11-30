import 'package:flutter/material.dart';

class GroupPage extends StatelessWidget {
  final List<Map<String, String>> members = [
    {'name': 'Youssef Akchi', 'image': 'assets/youssef.png'},
    {'name': 'Fatma Felhi', 'image': 'assets/fatma.png'},
    {'name': 'Iheb Touaibi', 'image': 'assets/iheb.png'},
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
          final member = members[index];
          return ListTile(
            leading: CircleAvatar(
            radius: 64,
            backgroundImage: AssetImage(member['image']!),
            onBackgroundImageError: (exception, stackTrace) {
            print("Error loading image: ${member['image']}");
  },
),

            title: Text(member['name']!), // Affichage du nom du membre
          );
        },
      ),
    );
  }
}

