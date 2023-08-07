import 'package:flutter/material.dart';
import 'package:login_test/home_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  String login = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('LoginPage'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              onChanged: (log) {
                login = log;
                // print(login);
                // print(password);
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Логин',
                suffixIcon: Icon(Icons.account_circle),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              onChanged: (pas) {
                password = pas;
                // print(login);
                // print(password);
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Пароль',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (login == 'kurs1@gmail.com' && password == 'kurs1') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
                //print('tuura');
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                        'Логиниңиз же парольуңуз туура эмес! Сураныч кайрадан жазыңыз'),
                  ),
                );
              }
            },
            child: const Text('Кирүү'),
          ),
        ],
      ),
    );
  }
}
