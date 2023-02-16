
// EJEMPLO BLOC STREAM - INHERITEDWIDGET
// creando el bloc y provider
	// loginBloc.dart
	import 'dart:async';

	class LoginBloc {
	  final _emailController = StreamController<String>.broadcast();
	  final _pwdController = StreamController<String>.broadcast();

	  // recuperar los datos del stream
	  Stream<String> get emailStream => _emailController.stream;
	  Stream<String> get pwdStream => _emailController.stream;

	  // insertando valores al stream
	  Function(String) get changeEmail => _emailController.sink.add;
	  Function(String) get changePwd => _pwdController.sink.add;

	  dispose() {
	    _emailController.close();
	    _pwdController.close();
	  }
	}

	// en BlocProvider.dart
	import 'package:flutter/material.dart';
	import 'package:validacion_formulario2/bloc/LoginBloc.dart';

	class BlocProvider extends InheritedWidget {
	  final loginBloc = LoginBloc();

	  BlocProvider({super.key, required super.child});

	  @override
	  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;

	  static LoginBloc of(BuildContext context) {
	    return (context.dependOnInheritedWidgetOfExactType<BlocProvider>()
	            as BlocProvider)
	        .loginBloc;
	  }
	}
// configurando el main
	// en main.dart
	void main() => runApp(const MyApp());

	class MyApp extends StatelessWidget {
	  const MyApp({super.key});

	  @override
	  Widget build(BuildContext context) {
	    return BlocProvider( // es el bloc provider que creamos
	      child: MaterialApp(
	        title: 'Material App',
	        initialRoute: LoginScreen.routeName,
	        routes: <String, WidgetBuilder>{
	          LoginScreen.routeName: (_) => LoginScreen(),
	          HomeScreen.routeName: (_) => HomeScreen(),
	        },
	        debugShowCheckedModeBanner: false,
	      ),
	    );
	  }
	}

// enviando datos
	// en 