import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Riego inteligente")),
        backgroundColor: Colors.indigo,
      ),
      body: Container(child: cuerpo()),
    );
  }
}

Widget cuerpo() {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                'https://th.bing.com/th/id/R.2b54924707c89c4a25d172d0a9a88d7c?rik=ZZmNgX1sbC5MIA&riu=http%3a%2f%2fimg1.xixik.net%2fcimg%2f110%2fxixik_349d07d5bc087c73.jpg&ehk=Ulh%2bFrXpzPiFMqKnOpZA3GfQ4E3%2bYGACsm%2bqyTt7Oo4%3d&risl=&pid=ImgRaw&r=0'),
            fit: BoxFit.cover)),
    child: Container(
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          nombre(),
          campoUsuario(),
          campoContrasena(),
          SizedBox(
            height: 10,
          ),
          botonEntrar(),
        ],
      )),
    ),
  );
}

Widget nombre() {
  return Text(
    'Login',
    style: TextStyle(
        color: Colors.white, fontSize: 35.0, fontWeight: FontWeight.bold),
  );
}

Widget campoUsuario() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 5),
    child: TextField(
      decoration: InputDecoration(
        hintStyle: TextStyle(color: Colors.white),
        hintText: 'User',
        fillColor: Colors.white,
        filled: false,
      ),
    ),
  );
}

Widget campoContrasena() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 5),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        hintStyle: TextStyle(color: Colors.white),
        fillColor: Colors.white,
        filled: false,
      ),
    ),
  );
}

Widget botonEntrar() {
  return MaterialButton(
    color: Colors.blue,
    padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
    onPressed: () {},
    child: Text(
      'Enter',
      style: TextStyle(fontSize: 25, color: Colors.white),
    ),
  );
}
