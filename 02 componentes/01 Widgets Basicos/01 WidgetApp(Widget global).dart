/* WIDGETS APP - Widget Global de Configuracion
  El widget app es un widget global de configuracion de diseño.
  Existen dos dos widgetApp globales: Material y Cupertino. Que vienen siendo
  widget de Android y iPhone respectivamente. 
  * 
  * TEMAS:
  *   - MaterialApp -> widget Global
  *     - home: 
  * 
  NOTA: El widget app debe ser el primer widget que se devuelva en el metodo build.
*/

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text('Hola Mundo con Material'),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: Text(
        'Hola mundo con Cupertino',
        style: TextStyle(color: Colors.white), // se cambia el color por que el fondo es negro
      ),
    );
  }
}