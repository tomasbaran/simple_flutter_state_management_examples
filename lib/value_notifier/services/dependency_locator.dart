import 'package:get_it/get_it.dart';
import 'package:simple_flutter_state_management_examples/value_notifier/data/person_repo.dart';
import 'package:simple_flutter_state_management_examples/value_notifier/data/person_service.dart';
import 'package:simple_flutter_state_management_examples/value_notifier/states/person_state.dart';
import '../states/theme_state.dart';

final locate = GetIt.instance;

void setupLocator() {
  // Presentation: states
  locate.registerLazySingleton<ThemeState>(() => ThemeState());
  locate.registerLazySingleton<PersonState>(() => PersonState());

  // Data: service
  locate.registerLazySingleton<PersonService>(() => PersonService());
  // Data: repository
  locate.registerLazySingleton<PersonRepo>(() => PersonRepo());
}
