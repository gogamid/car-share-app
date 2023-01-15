import 'package:flutter/material.dart';

import 'auth/login_page.dart';
import 'auth/registration_page.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Care Share App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        '/registration': (BuildContext context) => const RegistrationPage(),
        '/login': (BuildContext context) => const LoginPage(),
      },
    );
  }
}
