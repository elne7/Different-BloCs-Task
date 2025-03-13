import 'package:different_blocs_task/bloc/counter/counter_bloc.dart';
import 'package:different_blocs_task/bloc/counter/counter_event.dart';
import 'package:different_blocs_task/bloc/counter/counter_state.dart';
import 'package:different_blocs_task/bloc/theme/theme_bloc.dart';
import 'package:different_blocs_task/bloc/theme/theme_event.dart';
import 'package:different_blocs_task/bloc/theme/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        actions: [
          BlocBuilder<ThemeBloc, ThemeState>(
            builder: (context, state) {
              if (state is DarkTheme) {
                return IconButton(
                  icon: const Icon(Icons.light_mode),
                  onPressed: () {
                    BlocProvider.of<ThemeBloc>(context).add(ToggleTheme());
                  },
                );
              } else {
                return IconButton(
                  icon: const Icon(Icons.dark_mode),
                  onPressed: () {
                    BlocProvider.of<ThemeBloc>(context).add(ToggleTheme());
                  },
                );
              }
            },
          ),
        ],
      ),
      body: BlocConsumer<CounterBloc, CounterState>(
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('You have pushed the button this many times:'),
                Text(
                  context.read<CounterBloc>().count.toString(),
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    context.read<CounterBloc>().count = 0;
                    setState(() {});
                  },
                  child: Text('Reset'),
                ),
              ],
            ),
          );
        },
        listener: (context, state) {
          if (context.read<CounterBloc>().count == 5) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(const SnackBar(content: Text('You have reached 5')));
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CounterBloc>().add(IncrementEvent());
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
