// INSTALACION
	- flutter pub add flutter_dotenv
	- flutter_dotenv: ^5.0.2

// CONFIGURACION
	// en main.dart
	Future<void> main() async {
	  await dotenv.load(fileName: '.env');
	  runApp(MyApp());
	}
	// en .env (este archivo tiene que estar en la raiz)
	#API_URL=http://localhost:3000
	SECRET=sdj9bnb9dnj3245aft34ytsda3w4
	// agregando a assets
	flutter:
	  # If you have your .env file in a different location, ensure to add the correct one here.
	  assets:
	    - .env
// USO
	// obteniendo valores
	dotenv.get('API_URL', fallback: 'API_URL not found'),
	dotenv.env['API_URL'] ?? 'API_URL not found',