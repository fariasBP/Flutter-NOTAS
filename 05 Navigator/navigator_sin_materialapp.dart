
// en MaterialApp
	class MyApp extends StatelessWidget {
	  @override
	  Widget build(BuildContext context) {
	    return MaterialApp(
	      title: 'Material App',
	      home: HomePage(),
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
	          MaterialPageRoute<dynamic> route =
	              MaterialPageRoute(builder: (BuildContext context) {
	            return OnePage();
	          });
	          Navigator.push(context, route);
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