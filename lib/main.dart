import 'package:flutter/material.dart';
import 'package:todo_app_tharawt/views/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      initialRoute: HomePage.routName,
      routes: {HomePage.routName: (context) => HomePage()},
    );
  }
}
