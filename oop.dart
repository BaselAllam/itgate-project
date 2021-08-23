// OOP
    // Capsulation
    // EnCapsulation
    // Constructor & Named COnstructor
    // Class Methods
    // Access Modifier
    // Inheritence & Multiple Inhertince

class Human{

  String name = 'ahmed';
  int age = 20;
  String email = '.com';

  String humanData() {
    return '$name, $age, $email';
  }

  humanEat() {}

  humanSleep() {}

  humanWork() {}

  humanPlay() {}
}


main() {

  Human y = Human();

  Human x = Human();

  print(y.humanData());
  print(x.humanData());
}