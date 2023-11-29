import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.people, size: 100),
            TextField(
              decoration: InputDecoration(
                label: Text('Login'),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                label: Text('Senha'),
              ),
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Logar'),
            ),
          ],
        ),
      ),
    );
  }
}
