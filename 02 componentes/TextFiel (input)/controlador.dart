

// OBTENER VALOR SIN NECESIDAD DE CONVERTIR EN STATEFUL WIDGET
class MyApp extends StatelessWidget {
  late final TextEditingController _textFieldController =
      new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MaterialApp",
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar"),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _textFieldController,
              ),
              ElevatedButton(
                child: Text("Get Value"),
                onPressed: () {
                  print(_textFieldController.value.text);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// CREAR UN VALOR POR DEFECTO
class SettingsScreen extends StatefulWidget {
  static final String routeName = "settingsScreen";
  const SettingsScreen({Key? key}) : super(key: key);
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  String _nombre = "Pedro";
  late TextEditingController _textFieldController;

  @override
  void initState() { // Establecemos el nombre en initState
    // TODO: implement initState
    super.initState();
    _textFieldController = new TextEditingController(text: _nombre); // establecemos el valor por defecto
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
      ),
      body: ListView(
        children: [
          TextField(
            controller: _textFieldController,
            decoration: InputDecoration(
              labelText: "nombre",
              helperText: "Nombre de la persona usando el telefono",
            ),
            onChanged: (value) {},
          ),
          ElevatedButton(
            child: Text("Value"),
            onPressed: () {
              print(_textFieldController.value.text);
            },
          ),
        ],
      ),
    );
  }
}