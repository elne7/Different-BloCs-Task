import 'package:flutter/material.dart';

class InitStateView extends StatefulWidget {
  const InitStateView({super.key});

  @override
  State<InitStateView> createState() => _InitStateViewState();
}

class _InitStateViewState extends State<InitStateView> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text('You have pushed the button this many times:'),
          Text(
            '0',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ],
      ),
    );
  }
}
