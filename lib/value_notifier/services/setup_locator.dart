import 'package:get_it/get_it.dart';
import '../state/theme_state.dart';

final locate = GetIt.instance;

void setupLocator() {
  locate.registerLazySingleton<ThemeState>(() => ThemeState());
}
