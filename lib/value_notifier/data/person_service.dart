import 'package:simple_flutter_state_management_examples/value_notifier/data/person_repo.dart';
import 'package:simple_flutter_state_management_examples/value_notifier/models/person.dart';
import 'package:simple_flutter_state_management_examples/value_notifier/services/dependency_locator.dart';

// final persons = [
//   Person('Jessica', 1),
//   Person('Sarai', 2),
//   Person('Carmen', 3),
//   Person('Pamela', 4),
// ];

class PersonService {
  final personRepo = locate<PersonRepo>();

  Future<List<Person>> getPersons() async {
    final personsInJson = await personRepo.fetchPersons();
    print('Persons in JSON: $personsInJson');
    return [];
  }
}
