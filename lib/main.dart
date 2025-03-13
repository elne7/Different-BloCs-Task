import 'package:different_blocs_task/bloc/theme/theme_bloc.dart';
import 'package:different_blocs_task/counter_app.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BlocProvider(create: (context) => ThemeBloc(), child: MyApp()));
}
