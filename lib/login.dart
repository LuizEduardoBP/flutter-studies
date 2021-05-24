import 'package:flutter/material.dart';
import 'package:my_app/home_page.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email = '';
  String password = '';

  Widget _body() {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: 100,
                height: 100,
                child: Image.asset("assets/images/profile.png")),
            Container(height: 20, width: 20),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TextField(
                      onChanged: (text) {
                        email = text;
                        print(email);
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: "Email"),
                    ),
                    Container(
                      height: 15,
                    ),
                    TextField(
                      onChanged: (text) {
                        password = text;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: "Senha"),
                    ),
                    Container(
                      height: 30,
                    ),
                    RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blueGrey,
                      onPressed: () {
                        if (email == "lepessoa38@gmail.com" &&
                            password == "123") {
                          Navigator.of(context).pushReplacementNamed("/home");
                          print(email);
                          print(password);
                        } else {
                          print("erro ao fazer login");
                        }
                      },
                      child: Text("Login"),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Stack(
      children: [
        Container(
          color: Colors.blue.shade200,
        ),
        _body()
      ],
    ));
  }
}
