import 'package:flutter/material.dart';
import 'package:flutter_dark/group_page.dart';
import 'package:flutter_dark/home_page.dart';
import 'package:provider/provider.dart';
import 'theme_provider.dart';
import 'pages/home_page.dart';
import 'pages/group_page.dart';
import 'pages/color_picker_page.dart'; // Page pour choisir la couleur

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
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      themeMode: themeProvider.themeMode,
      theme: ThemeData(
        primaryColor: themeProvider.primaryColor,
        colorScheme: ColorScheme.light(primary: themeProvider.primaryColor),
      ),
      darkTheme: ThemeData(
        primaryColor: themeProvider.primaryColor,
        colorScheme: ColorScheme.dark(primary: themeProvider.primaryColor),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/group': (context) => GroupPage(),
        '/colorPicker': (context) => ColorPickerPage(),
      },
    );
  }
}
