/* Text
	Es un widget que pintar en la pantalla una cadena de texto con un
	solo estilo. La cadena puede romperse a través de varias líneas o
	puede mostrarse todas en la misma línea dependiendo de las
	restricciones de diseño.

*/

// Creacion de widget
	Text('Texto Normal'),

// otro ejemplo
	Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text("Hola este es un Texto"),
      ),
    );
  }