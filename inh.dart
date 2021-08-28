
class ABC extends Inter with A, B, C{}

class Inter{}


mixin A on Inter{

  bool x = true;

  sleep() {
    print('a sleeping');
  }

}


mixin B on Inter{

  bool bx = false;

  play() {
    print('b playing');
  }

}


mixin C on Inter{

  eat() {
    print('c eating');
  }

}


main() {

  ABC abc = ABC();

  print(abc.x);
}