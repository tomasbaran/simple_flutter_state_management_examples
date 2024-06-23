import 'dart:math';

import 'package:flutter/material.dart';
import 'package:simple_flutter_state_management_examples/value_notifier/features/person/data/person_service.dart';
import 'package:simple_flutter_state_management_examples/value_notifier/features/person/domain/models/person.dart';
import 'package:simple_flutter_state_management_examples/value_notifier/core/services/dependency_locator.dart';

class PersonState {
  final personService = locate<PersonService>();
  final selectedPerson = ValueNotifier<Person?>(null);

  List<Person> loadedPersons = List.empty();

  loadPersons() async {
    loadedPersons = await personService.getPersons();
  }

  setRandomPerson() {
    if (loadedPersons.isEmpty) {
      loadPersons();
    } else {
      final randomIndex = Random().nextInt(loadedPersons.length);
      selectedPerson.value = loadedPersons[randomIndex];
    }
  }
}
