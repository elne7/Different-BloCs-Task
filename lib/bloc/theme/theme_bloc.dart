import 'package:different_blocs_task/bloc/theme/theme_event.dart';
import 'package:different_blocs_task/bloc/theme/theme_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  bool darkMode = false;

  ThemeBloc() : super(InitalTheme()) {
    on<ToggleTheme>((event, emit) async {
      darkMode = !darkMode;
      if (darkMode == true) {
        emit(DarkTheme());
      } else if (darkMode == false) {
        emit(LightTheme());
      }
    });
  }
}
