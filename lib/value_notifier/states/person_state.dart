import 'dart:math';

import 'package:flutter/material.dart';
import 'package:simple_flutter_state_management_examples/value_notifier/models/person.dart';

final persons = [
  Person('Jessica', 1),
  Person('Sarai', 2),
  Person('Carmen', 3),
  Person('Pamela', 4),
];

class PersonState {
  final selectedPerson = ValueNotifier<Person?>(null);

  setPerson(Person person) {
    selectedPerson.value = person;
  }

  setRandomPerson() {
    final randomIndex = Random().nextInt(persons.length);
    selectedPerson.value = persons[randomIndex];
  }
}
