/* Expanded
	Widget que expande un elemento secundario de una fila, columnao
	flex para que el elemento secundario llene el espacio disponible.

*/

// sin expandir la caja del medio
	Row(
	  children: [
	    Container(width: 100, height: 100, decoration: BoxDecoration()),
	    BoxWidget(width: 100, height: 100, color: Colors.amber),
	    Conatainer(width: 100, height: 100, decoration: BoxDecoration()),
	  ],
	),
// expandiendo la caja del medio
	Row(
	  children: [
	    Container(width: 100, height: 100, decoration: BoxDecoration()),
	    Expanded(
	      child: BoxWidget(width: 100, height: 100, color: Colors.amber),
	    ),
	    Container(width: 100, height: 100, decoration: BoxDecoration()),
	  ],
	),