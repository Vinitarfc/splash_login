import 'package:flutter/material.dart';
import 'package:splash_login/controllers/login_controller.dart';

class CustomLoginButtonComponent extends StatelessWidget {
  final LoginController loginController;
  const CustomLoginButtonComponent({super.key, required this.loginController});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: loginController.inLoader,
      builder: (_, inLoader, __) => inLoader
          ? CircularProgressIndicator()
          : ElevatedButton(
              onPressed: () {
                loginController.auth().then((result) {
                  if (result) {
                    Navigator.of(context).pushNamed(
                        '/home'); //retirado Replacement para conseguir voltar pela AppBar
                    print('Sucesso');
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: const Text('Falha ao realizar o login'),
                      duration: const Duration(seconds: 2),
                      action: SnackBarAction(
                        label: 'Tentar novamente',
                        onPressed: () {},
                      ),
                    ));
                    print('Falhou');
                  }
                });
              },
              child: Text('Logar'),
            ),
    );
  }
}
