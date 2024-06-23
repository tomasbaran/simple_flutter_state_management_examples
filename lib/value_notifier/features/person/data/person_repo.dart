class PersonRepo {
  Future<String> fetchPersons() async {
    // Simulate a network request
    await Future.delayed(const Duration(seconds: 1));

    return """
{
    "persons": [
      {
        "name": "Miau",
        "age": 30
      },
      {
        "name": "Grrr",
        "age": 25
      }
    ]
  }
  """;
  }
}
