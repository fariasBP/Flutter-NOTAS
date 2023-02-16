



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MaterialApp",
      home: Scaffold(
        appBar: AppBar(title: Text("Appbar")),

        drawer: Drawer(
          child: Center(
            child: Text("Drawer"),
          ),
        ),
        
        body: Center(child: Text("Hello World!!!")),
      ),
    );
  }
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MaterialApp",
      home: Scaffold(
        appBar: AppBar(title: Text("AppBar")),
        body: Center(child: Text("Hello World!!!")),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                child: Container(),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/menu-img.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.pages),
                title: Text("Item 1"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.pages),
                title: Text("Item 1"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.pages),
                title: Text("Item 1"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.pages),
                title: Text("Item 1"),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}