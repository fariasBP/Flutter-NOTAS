/* Row y Column
	ROW Y COLUMN:
	- Column: Un widget que muestra sus hijos en una matriz vertical.
	- Row: Un widget que muestra sus hijos en una matriz horizontal.
	ALINEAMIENTO EN ROW Y COLUMN:
	- MainAxisAligment >>> Cómo deben colocarse los hijos a lo largo
											del eje principal.
		- start >>> Coloque a los hijos lo más cerca posible del inicio
								del eje principal. Ademas este es valor por defecto.
		- center >>> Coloque a los hijos lo más cerca posible de la mitad
								del eje principal.
		- end >>> Coloque a los hijos lo más cerca posible del final del
							eje principal.
		- spaceAround >>> Coloque el espacio libre uniformemente entre
									los hijos, así como la mitad de ese espacio antes y
									después del primer y último hijo.
		- spaceBetween >>> Coloque el espacio libre uniformemente entre los hijos.
		- spaceEvenly >>> Coloque el espacio libre uniformemente entre los
										hijos, así como antes y después del primer y último hijo.
	- CrossAxisAligment >>> Cómo deben colocarse los niños a lo largo
											del eje transversal.
		- start >>> Coloque los hijos con su borde de inicio alineado con
							el lado de inicio del eje transversal. Este es el valor por defecto.
		- center >>> Coloque a los hijos de manera que sus centros se
							alineen con el centro del eje transversal.
		- end >>> Coloque a los hijos lo más cerca posible del extremo del
						eje transversal.
		- baseline >>> Coloque a los hijos a lo largo del eje transversal
								de tal manera que sus líneas de base coincidan.
								Debido a que las líneas de base son siempre horizontales,
								esta alineación está destinada a ejes principales horizontales.
								Si el eje principal es vertical, entonces este valor se trata
								como inicio.
		
		- strech >>> Exija que los hijos llenen el eje transversal.
	TAMAÑO DEL ROW Y COLUMN:
	- mainAxisSize >>> Cuánto espacio debe ocuparse en el eje principal.
		- max >>> Maximice la cantidad de espacio libre a lo largo del eje principal,
							sujeto a las restricciones de diseño entrantes. Ademas este es
							el valor por defecto.
		- min >>> Minimice la cantidad de espacio libre a lo largo del
							eje principal, sujeto a las restricciones de diseño
							entrantes.
*/
// Row
	Row(
    children: [
      BoxWidget(width: 100, height: 100, marginH: 10),
      BoxWidget(width: 100, height: 100, marginH: 10),
      BoxWidget(width: 100, height: 100, marginH: 10),
    ],
  )
// Column
	
  Column(
    children: [
      BoxWidget(width: 100, height: 100, marginV: 10),
      BoxWidget(width: 100, height: 100, marginV: 10),
      BoxWidget(width: 100, height: 100, marginV: 10),
    ],
  )
// MainAxisAligment
Row(
  mainAxisAlignment: MainAxisAlignment.start,
  children: [
    BoxWidget(width: 50, height: 50, marginH: 10, marginV: 5),
    BoxWidget(width: 50, height: 50, marginH: 10, marginV: 5),
    BoxWidget(width: 50, height: 50, marginH: 10, marginV: 5),
  ],
),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    BoxWidget(width: 50, height: 50, marginH: 10, marginV: 5),
    BoxWidget(width: 50, height: 50, marginH: 10, marginV: 5),
    BoxWidget(width: 50, height: 50, marginH: 10, marginV: 5),
  ],
),
Row(
  mainAxisAlignment: MainAxisAlignment.end,
  children: [
    BoxWidget(width: 50, height: 50, marginH: 10, marginV: 5),
    BoxWidget(width: 50, height: 50, marginH: 10, marginV: 5),
    BoxWidget(width: 50, height: 50, marginH: 10, marginV: 5),
  ],
),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
    BoxWidget(width: 50, height: 50, marginH: 10, marginV: 5),
    BoxWidget(width: 50, height: 50, marginH: 10, marginV: 5),
    BoxWidget(width: 50, height: 50, marginH: 10, marginV: 5),
  ],
),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    BoxWidget(width: 50, height: 50, marginH: 10, marginV: 5),
    BoxWidget(width: 50, height: 50, marginH: 10, marginV: 5),
    BoxWidget(width: 50, height: 50, marginH: 10, marginV: 5),
  ],
),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    BoxWidget(width: 50, height: 50, marginH: 10, marginV: 5),
    BoxWidget(width: 50, height: 50, marginH: 10, marginV: 5),
    BoxWidget(width: 50, height: 50, marginH: 10, marginV: 5),
  ],
),
// CrossAxisAligment
	Column(
	  crossAxisAlignment: CrossAxisAlignment.start,
	  children: [
	    BoxWidget(width: 50, height: 50, marginH: 10, marginV: 5),
	    BoxWidget(width: 50, height: 50, marginH: 10, marginV: 5),
	  ],
	),
	Column(
	  crossAxisAlignment: CrossAxisAlignment.center,
	  children: [
	    BoxWidget(width: 50, height: 50, marginH: 10, marginV: 5),
	    BoxWidget(width: 50, height: 50, marginH: 10, marginV: 5),
	  ],
	),
	Column(
	  crossAxisAlignment: CrossAxisAlignment.end,
	  children: [
	    BoxWidget(width: 50, height: 50, marginH: 10, marginV: 5),
	    BoxWidget(width: 50, height: 50, marginH: 10, marginV: 5),
	  ],
	),
	Column(
	  crossAxisAlignment: CrossAxisAlignment.stretch,
	  children: [
	    BoxWidget(width: 50, height: 50, marginH: 10, marginV: 5),
	    BoxWidget(width: 50, height: 50, marginH: 10, marginV: 5),
	  ],
	)