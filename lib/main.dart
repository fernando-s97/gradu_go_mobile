import 'package:celebra_club/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Celebra Club',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: TextTheme(
              body1: TextStyle(fontSize: 18), // Texto do corpo
              body2: TextStyle(fontSize: 20), // Menu
              button: TextStyle(fontSize: 18), // Botões
              subhead: TextStyle(fontSize: 18) // Texto dentro de objetos
              )),
      home: HomePage());
}
