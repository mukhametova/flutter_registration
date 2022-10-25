import 'package:flutter/material.dart';

class RegisterPanel extends StatelessWidget {
  const RegisterPanel({Key? key}) : super(key: key);

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
                    'Регистрация!',
                    style: TextStyle(fontSize: 35, color: Colors.white),
                  ),
                ),
                Container(
                    width: 300,
                    height: 350,
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
                          TextField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.key_sharp),
                                hintText: "Ваш возраст"),
                          ),
                          Padding(
                              padding: EdgeInsets.only(top: 15),
                              child: ElevatedButton(
                                  onPressed: () {}, child: Text('Регистрация'))),
                          TextButton(
                              onPressed: () {Navigator.pushNamed(context, '/login_panel');}, child: Text('Есть аккаунт?'))
                        ],
                      ),
                    ))
              ],
            ),
          )),
    );
  }
}
