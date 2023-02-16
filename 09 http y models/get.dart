// INSTALLING
	- flutter pub add http
	- http: ^0.13.5

// USE
	// simple get
	import 'package:http/http.dart' as http;

	http.get(Uri.parse(MAIN_URL + _nowUrl)).then((res) async {
	  Map<String, dynamic> data = json.decode(res.body);

	  ProductsPrefs prodPrefs = await ProductsPrefs();
	  AppPrefs appPrefs = await AppPrefs();

	  ResponseModel r = ResponseModel(data);

	  if (r.code != 200) throw r.msg;

	  AppModel d = AppModel(data['data']);

	  if (prodPrefs.setProducts != d.setProducts) {
	    prodPrefs.setProducts = d.setProducts;
	    return d;
	  }
	  throw 'No hay actualizacion';
	}).catchError((err) {
	  throw err;
	});
	// with params
	String url = dotenv.get('URL_NOW_PLAYING', fallback: '');
    final uri = Uri.http(UrlMain, url, {
      'api_key': dotenv.get('API_KEY', fallback: ''),
      'language': 'es-ES',
    });
    return http.get(uri).then((res) {
      Map<String, dynamic> data = json.decode(res.body);

      List<MovieModel> nowPlayingMovies = [];
      for (Map<String, dynamic> movie in data['results']) {
        nowPlayingMovies.add(new MovieModel(movie));
      }
      return nowPlayingMovies;
    }).catchError((err) {
      throw err;
    });