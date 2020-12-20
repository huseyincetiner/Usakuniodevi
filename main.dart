import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

void main() {
  runApp(loginPage());
}

class loginPage extends StatefulWidget {
  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  String userName;
  String password;

  final _degerKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Form(
        key: _degerKey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                  decoration: InputDecoration(
                    labelText: "Kullanıcı Adı",
                    labelStyle: TextStyle(color: Colors.blue),
                    border: OutlineInputBorder(),
                  ),
                  onSaved: (value) {
                    userName = value;
                  }),
              SizedBox(
                height: 18.0,
              ),
              TextFormField(
                  decoration: InputDecoration(
                    labelText: "Şifre",
                    labelStyle: TextStyle(color: Colors.blue),
                    border: OutlineInputBorder(),
                  ),
                  onSaved: (value) {
                    password = value;
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    child: Text("Üye Ol"),
                    onPressed: () {},
                  ),
                  MaterialButton(
                    child: Text("Şifremi Unutum"),
                    onPressed: () {},
                  ),
                ],
              ),
              RaisedButton(
                child: Text("Giriş"),
                onPressed: () {
                  _degerKey.currentState.save();
                  debugPrint("userName : $userName , password : $password ");

                  if (userName == "demo" && password == "demo") {
                    debugPrint("Giriş Başarılı");
                  } else {
                    debugPrint("Kullanıcı adı ya da şifre hatalı");
                  }
                },
              )
            ],
          ),
        ),
      ),
    ));
  }
}
