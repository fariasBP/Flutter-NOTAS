

// PASAR DATOS A UN SCREEN
// en home_screen.dart
ElevatedButton(
	child: Text("Detalles"),
	onPressed: () {
		Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailsScreen(
          id: "908asg9ady7h",
        ),
      ),
    );
	},
),
// en details_screen.dart
class DetailsScreen extends StatelessWidget {
	static final routeName = "details_screen";
	final String id;

	DetailsScreen({
		Key? key,
		required this.id
	}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text("Detalles"),
			),
			body: SingleChildScrollView(
				child: Column(
					children: <Widget>[
						Text("Id Product: ${this.id}"),
					],
				),
			),
		);
	}
}