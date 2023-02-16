

// INSTALANDO
/*
- instrucciones en: https://pub.dev/packages/shared_preferences#-readme-tab-
- en consola escribir el siguiente comando
	flutter pub add shared_preferences
- o tambien copiar en pubspec
	dependencies:
	  shared_preferences: ^2.0.12
*/
* 
// crear un sharedPreferens
SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt("gender", value == 1 ? 1 : 2);
    _gender = value == 1 ? 1 : 2;
    setState(() {});

// obtener valores de un shared preference
SharedPreferences prefs = await SharedPreferences.getInstance();
    _gender = prefs.getInt("gender") == 1 ? 1 : 2;
    setState(() {});


// EJEMPLO 3 - ejemplo completo de uso de shared preference en main.dart
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController _controller = new TextEditingController();

  late SharedPreferences _prefs;
  String _lang = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    (() async {
      _prefs = await SharedPreferences.getInstance();
      _lang = _prefs.getString("lang") ?? "";
      setState(() {});
    })();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MaterialApp",
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar"),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Your favorite language is: " + _lang),
              TextField(
                controller: _controller,
              ),
              ElevatedButton(
                child: Text("Save language"),
                onPressed: _saveLang,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _saveLang() {
    _prefs.setString(
        "lang", _controller.text == "" ? "dart" : _controller.text);
    _lang = _controller.text;
    setState(() {});
  }
}