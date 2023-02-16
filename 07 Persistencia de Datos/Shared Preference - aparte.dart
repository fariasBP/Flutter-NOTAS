

// en main.dart
import 'package:flutter/material.dart';
import 'package:preferencias_de_usuario/shared/shared_lang.dart';

void main() {
  (() async {
    final prefsLang = new SharedLang();
    await prefsLang.initPrefs();
  })();
  runApp(MyApp());
}
// en MyApp.dart
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController _controller = new TextEditingController();

  final prefs = new SharedLang();
  String _lang = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    (() async {
      _lang = prefs.lang;
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
    prefs.lang = _controller.text == "" ? "dart" : _controller.text;
    _lang = _controller.text;
    setState(() {});
  }
}
// en shared_lang.dart
import 'package:shared_preferences/shared_preferences.dart';

class SharedLang {
  static final SharedLang _instancia = new SharedLang._internal();
  late SharedPreferences _prefs;
  // ignore: non_constant_identifier_names
  static final String LANG = "lang";

  factory SharedLang() {
    return _instancia;
  }
  SharedLang._internal();

  initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
  }

  String get lang {
    return _prefs.getString(SharedLang.LANG) ?? "";
  }

  set lang(String v) {
    _prefs.setString(SharedLang.LANG, v);
  }
}