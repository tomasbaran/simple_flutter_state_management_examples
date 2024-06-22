import 'package:get_it/get_it.dart';
import 'package:simple_flutter_state_management_examples/value_notifier/states/person_state.dart';
import '../states/theme_state.dart';

final locate = GetIt.instance;

void setupLocator() {
  locate.registerLazySingleton<ThemeState>(() => ThemeState());
  locate.registerLazySingleton<PersonState>(() => PersonState());
}
