import 'package:flutter/material.dart';

void main() {
  runApp(uyeOl());
}

class uyeOl extends StatefulWidget {
  @override
  _uyeOlState createState() => _uyeOlState();
}

class _uyeOlState extends State<uyeOl> {
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
                  labelText: "Email",
                  labelStyle: TextStyle(color: Colors.blue),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 18.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Kullanıcı Adı",
                  labelStyle: TextStyle(color: Colors.blue),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 18.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Şifre",
                  labelStyle: TextStyle(color: Colors.blue),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 18.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Şifre Tekrar",
                  labelStyle: TextStyle(color: Colors.blue),
                  border: OutlineInputBorder(),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    child: Text("Vazgeç"),
                    onPressed: () {},
                  ),
                ],
              ),
              RaisedButton(
                child: Text("Kaydol"),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    ));
  }
}
