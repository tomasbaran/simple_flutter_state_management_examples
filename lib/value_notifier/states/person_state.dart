import 'dart:math';

import 'package:flutter/material.dart';
import 'package:simple_flutter_state_management_examples/value_notifier/data/persons.dart';
import 'package:simple_flutter_state_management_examples/value_notifier/models/person.dart';

class PersonState {
  final selectedPerson = ValueNotifier<Person?>(null);
  List<Person> loadedPersons = List.empty();

  loadPersons() {
    loadedPersons = persons;
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
