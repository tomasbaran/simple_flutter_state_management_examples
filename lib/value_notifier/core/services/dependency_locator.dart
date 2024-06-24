import 'package:get_it/get_it.dart';
import 'package:simple_flutter_state_management_examples/value_notifier/features/person/data/person_repo.dart';
import 'package:simple_flutter_state_management_examples/value_notifier/features/person/data/person_service.dart';
import 'package:simple_flutter_state_management_examples/value_notifier/features/person/presentation/states/person_state.dart';
import '../../features/person/presentation/states/theme_state.dart';

final locate = GetIt.instance;

void setupLocator() {
  // Presentation: states
  locate.registerLazySingleton<ThemeState>(() => ThemeState());
  locate.registerLazySingleton<PersonState>(() => PersonState(locate()));

  // Data: service
  locate.registerLazySingleton<PersonService>(() => PersonService(locate()));
  // Data: repository
  locate.registerLazySingleton<PersonRepo>(() => PersonRepo());
}
