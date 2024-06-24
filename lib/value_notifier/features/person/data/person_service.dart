import 'dart:convert';

import 'package:simple_flutter_state_management_examples/value_notifier/features/person/data/person_repo.dart';
import 'package:simple_flutter_state_management_examples/value_notifier/features/person/domain/models/person.dart';

// final persons = [
//   Person('Jessica', 1),
//   Person('Sarai', 2),
//   Person('Carmen', 3),
//   Person('Pamela', 4),
// ];

class PersonService {
  final PersonRepo personRepo;
  PersonService(this.personRepo);

  Future<List<Person>> parsePersons() async {
    final personsInJson = await personRepo.fetchPersons();

    final data = jsonDecode(personsInJson);
    final personsData = data['persons'] as List;

    return personsData.map((e) => Person.fromJson(e)).toList();
  }
}
