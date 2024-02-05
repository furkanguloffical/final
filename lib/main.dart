import 'package:flutter/material.dart';
import 'package:furkan_gul/screens/loginScreen.dart';
import 'package:furkan_gul/screens/profileScreen.dart';
import 'package:furkan_gul/screens/homeScreen.dart';
import 'package:furkan_gul/screens/registerScreen.dart';
import 'package:furkan_gul/screens/contactScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project',
      debugShowCheckedModeBanner: false,
      routes: {
        '/login': (context) => const loginScreen(),
        '/home': (context) => homeScreen(),
        '/profile': (context) => const profileScreen(),
        '/register': (context) => const registerScreen(),
        '/contact': (context) => const contactScreen(),
      },
      initialRoute: '/login',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
