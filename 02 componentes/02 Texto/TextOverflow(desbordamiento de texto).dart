/* TextOverflow
	Maneja el desbordamiento visual del texto.
	TEMAS:
		- clip >>> recorta el texto debordado para entrar a su contenedor.
              Ademas este es el valor por defecto. 
		- ellipsis >>> Utilice una elipsis (puntos suspensivos) para indicar
									que el texto se ha desbordado.
		- fade >>> desvanece el texto desbordado para que sea transparente.
		- visible >>> no recorta nada y deja que el texto se desborde.
*/


Container(
  width: 350,
  height: 200,
  decoration: BoxDecoration(
    color: Colors.amber,
  ),
  child: Text(
    "Ab nisi blanditiis quae commodi amet omnis magni. Ab nisi blanditiis quae commodi amet omnis magni.",
    style: TextStyle(fontSize: 36),

    overflow: TextOverflow.clip,
    overflow: TextOverflow.ellipsis,
    overflow: TextOverflow.fade,
    overflow: TextOverflow.visible,
    
  ),
),

/* Ellipses con maxLine
  En el ejemplo anterior cuando se colocaba ellipses cortaba y
  colocaba puntos suspensivos en la primera linea, usando masline
  podemos controlar has que linea se coloca esos puntos suspensivos.
*/

Container(
  width: 350,
  height: 200,
  decoration: BoxDecoration(
    color: Colors.amber,
  ),
  child: Text(
    "Ab nisi blanditiis quae commodi amet omnis magni. Ab nisi blanditiis quae commodi amet omnis magni.",
    style: TextStyle(fontSize: 36),

    overflow: TextOverflow.ellipsis,
    maxLines: 3,

  ),
),