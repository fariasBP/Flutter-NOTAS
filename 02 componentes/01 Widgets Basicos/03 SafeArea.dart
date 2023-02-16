/* SAFEAREA
	Widget que se pinta en el area segura de la aplicaccion, es decir
	el area debajo de la barra de notificaciones.
*/


@override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Text('Este Texto esta en el area segura'),
    );
  }