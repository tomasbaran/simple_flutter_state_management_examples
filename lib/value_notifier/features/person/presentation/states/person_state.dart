import 'dart:math';
import 'package:flutter/material.dart';
import 'package:simple_flutter_state_management_examples/value_notifier/features/person/data/person_service.dart';
import 'package:simple_flutter_state_management_examples/value_notifier/features/person/domain/models/person.dart';

class PersonState {
  PersonState(this.personService);
  final PersonService personService;
  final selectedPerson = ValueNotifier<Person?>(null);

  List<Person> loadedPersons = [];

  loadPersons() async {
    loadedPersons = await personService.parsePersons();
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
