/* SizedBox
	Si se le da un hijo, este widget lo obliga a tener un ancho
	y/ o alto específico.

*/
/* Establecer un ancho y un alto a un ElevatedButton
	En este caso SizedBox obliga a que ElevatedButton tenga un width
	de 200 y un height de 100.
*/
	SizedBox(
	  width: 200,
	  height: 100,
	  child: ElevatedButton(onPressed: () {}, child: Text('Boton')),
	),