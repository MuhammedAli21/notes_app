import 'package:flutter/material.dart';
import 'package:todo_app_tharawt/screens/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomePage.routName,
      routes: {HomePage.routName: (context) => HomePage()},
    );
  }
}
