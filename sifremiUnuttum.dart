import 'package:flutter/material.dart';

void main() {
  runApp(sifremiUnuttum());
}

class sifremiUnuttum extends StatefulWidget {
  @override
  _sifremiUnuttumState createState() => _sifremiUnuttumState();
}

class _sifremiUnuttumState extends State<sifremiUnuttum> {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),
              RaisedButton(
                child: Text("Gönder"),
                onPressed: () {
                  debugPrint("Email adresine şifre sıfırlama gönderildi");
                },
              )
            ],
          ),
        ),
      ),
    ));
  }
}
