import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:al_hadith/presentation/pages/home_page.dart';
import 'database_initialization.dart'; // Importing DatabaseManager

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    DatabaseManager.initDatabase(); // Initialize the database when the app starts

    return GetMaterialApp(
      debugShowMaterialGrid: false,
      title:"ST Courier",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
