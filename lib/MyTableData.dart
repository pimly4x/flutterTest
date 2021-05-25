class Person {
  String firstName;
  String lastName;

  Person({this.firstName, this.lastName});

  static List<Person> getPersonList() {
    return <Person>[
      Person(firstName: 'Mike', lastName: 'Tyson'),
      Person(firstName: 'Peter', lastName: 'Parker'),
      Person(firstName: 'John', lastName: 'Cena'),
      Person(firstName: 'Rose', lastName: 'Dyson'),
      Person(firstName: 'Jasmine', lastName: 'Kaali')
    ];
  }
}
