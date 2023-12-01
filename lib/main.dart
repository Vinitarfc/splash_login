import 'package:flutter/material.dart';
import 'package:splash_login/pages/details_page.dart';
import 'package:splash_login/pages/home_page.dart';
import 'package:splash_login/pages/login_page.dart';
import 'package:splash_login/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'login Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green.shade500),
        primaryColor: Colors.green.shade500,
        useMaterial3: true,
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (_) => const SplashPage(),
        '/login': (_) => LoginPage(),
        '/home': (_) => const HomePage(),
        '/datails': (_) => const DetailsPage(),
      },
    );
  }
}
