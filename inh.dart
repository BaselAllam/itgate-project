

class Person{

  String name;
  int age;
  static int counter = 0;

  Person(this.name, this.age) {
    counter++;
  }

  String personData() {
    return '$name, $age';
  }
}


class Student extends Person{

  late int score;

  Student(name, age, this.score) : super(name, age);
}


main() {

  Student std = Student('name', 20, 200);

  print(std.personData());
}


// Research Multiple Inhertience & Diamond Problem
// StateLessWidget & StateFulWidget