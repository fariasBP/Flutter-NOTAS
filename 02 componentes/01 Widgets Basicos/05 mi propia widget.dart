

// mi widget padre
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final _stateApp = Provider.of<AppProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: 'App',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HijoWidget(nombre: 'nombre de hijo')
          ],
        ),
      ),
    );
  }
}


// mi widget hijo

import 'package:flutter/material.dart';

class HijoWidget extends StatelessWidget {
  HijoWidget({Key? key, required this.nombre}) : super(key: key);

  String nombre;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(this.nombre),
    );
  }
}
