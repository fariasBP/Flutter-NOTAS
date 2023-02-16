

// en MaterialApp
	class MyApp extends StatelessWidget {
	  @override
	  Widget build(BuildContext context) {
	    return MaterialApp(
	      title: 'Material App',
	      initialRoute: 'homePage',
	      routes: <String, WidgetBuilder>{
	        'homePage': (BuildContext context) => HomePage(),
	        'onePage': (BuildContext context) => OnePage(),
	      },
	    );
	  }
	}

// en homePage
	class HomePage {
		Widget build(BuildContext context) {
	    return Scaffold(
	      appBar: AppBar(title: Text('Pagina Home')),

	      body: ElevatedButton(
	        child: Text('ir a pagina 1'),
	        onPressed: () {
	          Navigator.pushNamed(context, 'onePage');
	        },
	      ),

	    );
	  }
	}
// pagina 1
	class OnePage extends StatelessWidget {
	  Widget build(BuildContext context) {
	    return Scaffold(
	      appBar: AppBar(title: Text('Pagina 1')),

	      body: ElevatedButton(
	        child: Text('Atras'),
	        onPressed: () {
	          Navigator.pop(context);
	        },
	      ),

	    );
	  }
	}
// EJEMPLO 2 - PUSHREPLACEDNAMED
	Navigator.pushNamed(context, HomeScreen.routeName);