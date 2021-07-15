import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela de Login"),
        backgroundColor: Colors.black12,
      ),
      body: Container(
        width: double.infinity,
          padding: EdgeInsets.all(16),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset('imagens/amazon.png'),
            Padding(

              padding: EdgeInsets.all(30),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(labelText: "Digite seu e-mail:"),
                obscureText: false,
                controller: _textEditingController,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(labelText: "Digite sua senha:"),
                obscureText: false,
                controller: _textEditingController,
                ),
            ),
          // ignore: deprecated_member_use
            RaisedButton(
              child: Text("Login"),
              color: Colors.blue,
              onPressed: () {
              print("Dados:" +_textEditingController.text);
              },
            ),
          ],
      ),
      ),
    );
  }
}
