import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projettest/home.dart';
import 'package:projettest/onboarding/onboard.dart';
import 'package:shared_preferences/shared_preferences.dart';

int? isviewed;//si la page est vue?

void main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();// creation d'une varaible pour stocker une valeur  .Les données peuvent être conservées sur le disque de manière asynchrone
  isviewed = prefs.getInt('onBoard');
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Onboarding Test',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: isviewed != 0 ? OnBoard() : Home(),
    );
  }
}