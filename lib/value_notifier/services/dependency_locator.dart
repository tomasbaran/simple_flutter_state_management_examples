import 'package:get_it/get_it.dart';
import '../states/theme_state.dart';

final locate = GetIt.instance;

void setupLocator() {
  locate.registerLazySingleton<ThemeState>(() => ThemeState());
}
