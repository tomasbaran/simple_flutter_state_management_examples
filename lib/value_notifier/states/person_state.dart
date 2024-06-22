import 'dart:math';

import 'package:flutter/material.dart';
import 'package:simple_flutter_state_management_examples/value_notifier/data/persons.dart';
import 'package:simple_flutter_state_management_examples/value_notifier/models/person.dart';

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
