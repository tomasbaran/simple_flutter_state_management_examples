import 'dart:math';

import 'package:flutter/material.dart';
import 'package:simple_flutter_state_management_examples/value_notifier/data/person_repo.dart';
import 'package:simple_flutter_state_management_examples/value_notifier/models/person.dart';
import 'package:simple_flutter_state_management_examples/value_notifier/services/dependency_locator.dart';

class PersonState {
  final personRepo = locate<PersonRepo>();
  final selectedPerson = ValueNotifier<Person?>(null);

  List<Person> loadedPersons = List.empty();

  loadPersons() {
    loadedPersons = personRepo.all;
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
