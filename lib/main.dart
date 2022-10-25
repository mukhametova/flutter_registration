import 'package:flutter/material.dart';
import 'package:malika_flutter/register.dart';

void main() => runApp(MaterialApp(
      home: MainApp(),
    ));

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login_panel',
      routes: {
        '/login_panel': (context) => const LoginPanel(),
        '/register_panel': (context) => const RegisterPanel(),
      },
    );
  }
}

class LoginPanel extends StatelessWidget {
  const LoginPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(color: Colors.redAccent),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    'Добро пожаловать!',
                    style: TextStyle(fontSize: 35, color: Colors.white),
                  ),
                ),
                Container(
                    width: 300,
                    height: 320,
                    decoration: BoxDecoration(color: Colors.white54),
                    child: Padding(
                      padding: EdgeInsets.all(35),
                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.mail_lock_outlined),
                                hintText: "Ваша почта"),
                          ),
                          TextField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.key_sharp),
                                hintText: "Ваш пароль"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Text('Забыли пароль?'),
                          ),
                          Padding(
                              padding: EdgeInsets.only(top: 15),
                              child: ElevatedButton(
                                  onPressed: () {}, child: Text('Войти'))),
                          TextButton(
                              onPressed: () {Navigator.pushNamed(context, '/register_panel');}, child: Text('Нету аккаунта?'))
                        ],
                      ),
                    ))
              ],
            ),
          )),
    );
  }
}
