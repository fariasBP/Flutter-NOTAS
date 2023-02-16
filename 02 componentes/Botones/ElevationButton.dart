/* ElevatedButton
	Es un boton que ha diferencia de TextButton esta ya tiene un borde y
	color de fondo definido

*/

// Creacion
	ElevatedButton(
		onPressed: () {},
		child: Text('Elevatedbutton'),
	),
// Estilos
	// Color de Texto
		ElevatedButton(
			onPressed: () {},
			child: Text(
			  'Elevatedbutton color text',
			  style: TextStyle(
			    color: Colors.yellowAccent,
			  ),
			),
		),
	// Color de fondo
		ElevatedButton(
			onPressed: () {},
			child: Text('Elevatedbutton Background'),
			style: ElevatedButton.styleFrom(
			  primary: Colors.lightGreen,
			),
		),