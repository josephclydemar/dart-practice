// Class, Objects, Inheritance & Mixins


mixin CanCrawl {
  void crawl() {
    print('Crawling');
  }
  void dive() {
    print('1 Diving');
  }
}
mixin CanSwim {
  void swim() {
    print('Swimming');
  }
  void dive() {
    print('2 Diving');
  }
}




interface class CanCamoflage {
  void changeSkinPattern() {
    print('I am changing my skin pattern');
  }
}

interface class Climb {
  void climbingTree() {
    print('I am climbing a tree...');
  }
}

abstract class Animal {
  void makeNoise();
  void move() {
    print('I am moving');
  }
}

class Dog extends Animal with CanCrawl, CanSwim {
  
  @override
  void makeNoise() {
    print('Aawwrrhh!!');
  }
}

class Chameleon extends Animal implements CanCamoflage, Climb {

  @override
  void makeNoise() {
    print('Sshshsh...');
  }

  @override
  void changeSkinPattern() {
    print('I am changing to polkadots pattern...');
  }

  @override
  void climbingTree() {
    print('I am climbing tree...');
  }
}

class Human with CanCrawl, CanSwim {

}

mixin CanSit on Human {
  void sit() {
    print('Sitting...');
  }
}

// class Cat with CanSit { // ERROR: Not subclass of Human class
// }
class Student extends Human with CanSit {

}

void main(List<String> args) {
  for(int i=0; i<args.length; i++) {
    print(args[i]);
  }
  Dog d1 = Dog();
  Chameleon c1 = Chameleon();
  d1.makeNoise();
  d1.crawl();
  d1.swim();
  c1.makeNoise();
  c1.changeSkinPattern();
  c1.move();
  c1.climbingTree();

  Human h1 = Human();
  h1.dive();
}