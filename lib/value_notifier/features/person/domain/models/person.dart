class Person {
  String? name;
  int? age;

  Person(this.name, this.age);

  toJson() {
    return {'name': name, 'age': age};
  }

  factory Person.fromJson(Map<String, dynamic> json) => Person(json['name'], json['age']);
}
