import 'package:flutter/material.dart';

class IncrementStateView extends StatefulWidget {
  const IncrementStateView({super.key});

  @override
  State<IncrementStateView> createState() => _IncrementStateViewState();
}

class _IncrementStateViewState extends State<IncrementStateView> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text('You have pushed the button this many times:'),
          Text(
            'widget.state',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ],
      ),
    );
  }
}
