

// carpetas y archivos

bloc
	counter_bloc
		counter_bloc.dart
		counter_state.dart
		counter_event.dart
screens
	CounterScreen.dart
main.dart

// en main.dart

import 'package:bloc_counter/bloc/counter_bloc/counter_bloc.dart';
import 'package:bloc_counter/screens/CounterScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CounterBloc>(create: (_) => CounterBloc()),
      ],
      child: MaterialApp(
        title: 'Material App',
        routes: <String, WidgetBuilder>{
          CounterScreen.route: (_) => CounterScreen(),
        },
        initialRoute: CounterScreen.route,
      ),
    );
  }
}

// en CounterScreen.dart

import 'package:bloc_counter/bloc/counter_bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  static const route = 'counterScreen';
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text(
                  state.counter.toString(),
                  style: TextStyle(fontSize: 46),
                );
              },
            ),
            SizedBox(height: 32),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () => BlocProvider.of<CounterBloc>(context).add(
                    CounterDecrement(),
                  ),
                  child: Text('-'),
                ),
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () => BlocProvider.of<CounterBloc>(context).add(
                    CounterReset(),
                  ),
                  child: Text('Reset'),
                ),
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () => BlocProvider.of<CounterBloc>(context).add(
                    CounterIncrement(),
                  ),
                  child: Text('+'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

// En counter_bloc.dart

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'counter_state.dart';
part 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(counter: 0)) {
    on<CounterIncrement>(
      (event, emit) => emit(CounterState(counter: state.counter + 1)),
    );
    on<CounterDecrement>(
      (event, emit) => emit(CounterState(counter: state.counter - 1)),
    );
    on<CounterReset>(
      (event, emit) => emit(CounterState(counter: 0)),
    );
  }
}

// En counter_state.dart

part of 'counter_bloc.dart';

@immutable
class CounterState {
  final int counter;
  CounterState({required this.counter});

  CounterState initialState() => new CounterState(counter: 0);

  CounterState copyWith({required int counter}) =>
      CounterState(counter: counter ?? this.counter);
}

// En counter_event.dart

part of 'counter_bloc.dart';

abstract class CounterEvent {}

class CounterIncrement extends CounterEvent {}

class CounterDecrement extends CounterEvent {}

class CounterReset extends CounterEvent {}