// INSTALACION
  - flutter pub add provider
  - dependencies:
      provider: ^6.0.4

// en AppProvider.dart
import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {
  String _appName = "Acapela";

  String get appName {
    return _appName;
  }

  set appName(String name) {
    _appName = name;

    notifyListeners();
  }
}

// en main.dart
import 'package:acapela_app/provider/AppProvider.dart';
import 'package:acapela_app/screens/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppProvider()),
        // aqui viene mas providers
      ],

      child: MaterialApp(
        title: 'MyApplication',
        initialRoute: 'homeScreen',
        routes: <String, WidgetBuilder>{
          'homeScreen': (BuildContext context) => const HomeScreen(),
        },
      ),
    );
  }
}

// en HomeScreen.dart
import 'package:acapela_app/provider/AppProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  	
    final _stateApp = Provider.of<AppProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(_stateApp.appName),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Cambiar Titulo'),
          onPressed: () {
            _stateApp.appName = 'Este es otro titulo';
          },
        ),
      ),
    );
  }
}