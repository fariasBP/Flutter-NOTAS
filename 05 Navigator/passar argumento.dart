

// PASAR ARGUMENTOS POR NAVIGATOR
// en home_screen.dart
ElevatedButton(
	child: Text("Detalles"),
	onPressed: () {
		Navigator.pushNamed(
			context,
			DetailsScreen.routeName,
			arguments: EditArguments("asdfakh325rhkarh32"),
		);
	},
),
// en details_screen.dart
class DetailsScreen extends StatelessWidget {
	static final routeName = "details_screen";

	DetailsScreen({Key? key}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		final args = ModalRoute.of(context)!.settings.arguments as EditArguments;
		return Scaffold(
			appBar: AppBar(
				title: Text("Detalles"),
			),
			body: SingleChildScrollView(
				child: Column(
					children: <Widget>[
						Text("Id Product: ${args.id}"),
					],
				),
			),
		);
	}
}
class DetailsArguments {
	final String id;
	EditArguments(this.id);
}