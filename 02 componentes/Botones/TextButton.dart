/* TextButton
  Es un tipo de boton que se caracteriza por solo llevar texto, esta se
  usa normalmente para texto en barra de herramientas, cuadros de dialogo
  o en linea con otro documento. Sin embargo se puede dar estilos.
*/
// Creacion basica
  TextButton(
    onPressed: () {},
    child: Text("TextButton"),
  )
// Estilos con TextStyle
  // color de texto
    TextButton(
      onPressed: () {},
      child: Text(
        "TextButton color text",
        style: TextStyle(
          color: Colors.greenAccent,
        ),
      ),
    )

// color de fondo
  TextButton(
    onPressed: () {},
    child: Text("TextButton background"),
    style: TextButton.styleFrom(
      backgroundColor: Colors.cyanAccent,
    ),
  )