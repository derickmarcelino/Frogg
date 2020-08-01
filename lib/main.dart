import 'package:flutter/material.dart';
import 'package:Frogg/screens/dashboard.dart';
import 'package:Frogg/screens/fortaleza.dart';
import 'package:Frogg/screens/login_screen.dart';
import 'package:Frogg/screens/imagem.dart';
import 'package:Frogg/screens/pesquisar.dart';
import 'package:Frogg/screens/salvador.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
 
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      routes: <String, WidgetBuilder>{
        '/dashboard' : (BuildContext context) => new DashBoard(),
        '/imagem' : (BuildContext context) => new ImagemBoard(),
        '/pesquisar' : (BuildContext context) => new Pesquisar(),
        '/salvador' : (BuildContext context) => new Salvador(),
        '/fortaleza' : (BuildContext context) => new Fortaleza(),
    },
    );
  }
}
