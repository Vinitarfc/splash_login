class LoginController {
  String? _login;
  setLogin(String value) => _login = value;

  String? _senha;
  setSenha(String value) => _senha = value;

  Future<bool> auth() async {
    print('login: $_login, senha: $_senha');
    return false;
  }
}
