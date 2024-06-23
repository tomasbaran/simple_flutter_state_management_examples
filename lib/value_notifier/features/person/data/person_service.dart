import 'dart:convert';

import 'package:simple_flutter_state_management_examples/value_notifier/features/person/data/person_repo.dart';
import 'package:simple_flutter_state_management_examples/value_notifier/features/person/domain/models/person.dart';
import 'package:simple_flutter_state_management_examples/value_notifier/core/services/dependency_locator.dart';

// final persons = [
//   Person('Jessica', 1),
//   Person('Sarai', 2),
//   Person('Carmen', 3),
//   Person('Pamela', 4),
// ];

class PersonService {
  final personRepo = locate<PersonRepo>();

  Future<List<Person>> getPersons() async {
    List<Person> persons = [];
    final personsInJson = await personRepo.fetchPersons();

    final data = jsonDecode(personsInJson);
    final personsData = data['persons'];

    for (var jsonPerson in personsData) {
      persons.add(Person.fromJson(jsonPerson));
    }
    return persons;
  }
}
