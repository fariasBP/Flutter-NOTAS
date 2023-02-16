/* SCAFFOLD 
	Implementa la estructura de diseño visual de diseño de materiales
	básicos. Es decir que implemente campos de estructura de diseño
	para crear otros widget estos campos son: AppBar (barra superior),
	body: (cuerpo), SideNav (navegacion derecho), RightNav (navegacion derecha),
	BottomBar (barra inferior).
	
	TEMAS
		Scaffold<Widget> --> Widget que impletementa una estructura de diseño
			-> appBar<PreferredSizeWidget> --> campo o region para una barra
				 										de aplicación para mostrar en la parte
				 										superios del andamio.
			-> body<Widget> --> campo o region primario del andamio.
			-> backgroundColor<Color> --> color de fondo del andamio.
			-> BottomNavigationBar<Widget> --> Una barra de navegación inferior
																	para mostrar en la parte inferior del andamio.
			-> BottomSheet<Widget> --> La hoja inferior persistente que se mostrará.
     
  NOTAS:
    - es una estructura basica, usala cuando quieres que apareza el APPBAR y/o 
      BOTTOMNAVIGATIONBAR.
    - por defecto esta ya te da el SafeArea.
*/

// Ejemplo 1 - Scaffold solo con Home
	Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Text('Hola Mundo'),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        backgroundColor: Colors.white,
        body: Text('Hola Mundo'),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              label: 'Item',
              icon: Icon(Icons.ac_unit),
            ),
            BottomNavigationBarItem(
              label: 'Item',
              icon: Icon(Icons.ac_unit),
            ),
            BottomNavigationBarItem(
              label: 'Item',
              icon: Icon(Icons.ac_unit),
            ),
          ],
        ),
        bottomSheet: Text('hola mundo'),
      ),
    );
  }
