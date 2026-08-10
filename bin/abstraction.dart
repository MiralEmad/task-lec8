
// 1. BankAccount 

class BankAccount {
  double _balance;

  BankAccount([this._balance = 0]);

  double get balance => _balance;

  void deposit(double amount) {
    if (amount <= 0) {
      print('Deposit amount must be positive.');
      return;
    }
    _balance += amount;
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      print('Withdraw amount must be positive.');
      return;
    }
    if (amount > _balance) {
      print('Insufficient funds: cannot withdraw $amount from $_balance.');
      return;
    }
    _balance -= amount;
  }
}

// 2. Student 

class Student {
  String _name;
  double _grade;

  Student(this._name, this._grade);

  String get name => _name;
  double get grade => _grade;

  set grade(double value) {
    if (value < 0 || value > 100) {
      print('Invalid grade: $value. Must be between 0 and 100.');
      return;
    }
    _grade = value;
  }
}

// 3. Vehicle 

class Vehicle {
  String brand;
  int speed;

  Vehicle(this.brand, this.speed);

  void describe() {
    print('Brand: $brand, Speed: $speed km/h');
  }
}

class Car extends Vehicle {
  int doors;

  Car(String brand, int speed, this.doors) : super(brand, speed);

  @override
  void describe() {
    super.describe();
    print('Doors: $doors');
  }
}


// 4. Animal 

class Animal {
  String name;

  Animal(this.name);
}

class Dog extends Animal {
  String breed;

  Dog(String name, this.breed) : super(name);
}

// 5. Shape (abstract) / Rectangle / Circle

abstract class Shape {
  double area();
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double area() => width * height;
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() => 3.141592653589793 * radius * radius;
}

// 6. Employee 

abstract class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);

  void work();

  void introduce() {
    print('Hi, my name is $name.');
  }
}

class Developer extends Employee {
  Developer(String name, double salary) : super(name, salary);

  @override
  void work() {
    print('$name is writing code.');
  }
}

// 7. Flyable 

abstract class Flyable {
  void fly();
}

abstract class Swimmable {
  void swim();
}

class Duck implements Flyable, Swimmable {
  @override
  void fly() {
    print('The duck flies.');
  }

  @override
  void swim() {
    print('The duck swims.');
  }
}


// 8. Drawable interface / Square / Triangle

abstract class Drawable {
  void draw();
  String getColor();
}

class Square implements Drawable {
  double side;
  String color;

  Square(this.side, this.color);

  @override
  void draw() {
    print('Drawing a square with side $side.');
  }

  @override
  String getColor() => color;
}

class Triangle implements Drawable {
  double base;
  double height;
  String color;

  Triangle(this.base, this.height, this.color);

  @override
  void draw() {
    print('Drawing a triangle with base $base and height $height.');
  }

  @override
  String getColor() => color;
}


// 9. Counter 

class Counter {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
  }

  void decrement() {
    if (_count > 0) {
      _count--;
    } else {
      print('Counter cannot go below 0.');
    }
  }

  void reset() {
    _count = 0;
  }
}


void main() {
  print(' 1. BankAccount ');
  var account = BankAccount(100);
  account.deposit(50);
  account.withdraw(30);
  account.withdraw(1000); // rejected
  print('Balance: ${account.balance}');

  print(' 2. Student ');
  var student = Student('Ali', 85);
  student.grade = 120; // rejected
  student.grade = 92;
  print('${student.name}: ${student.grade}');

  print(' 3. Vehicle ');
  var vehicle = Vehicle('Generic', 100);
  vehicle.describe();
  var car = Car('Toyota', 180, 4);
  car.describe();

  print(' 4. Animal ');
  var dog = Dog('Rex', 'Labrador');
  print('${dog.name} is a ${dog.breed}.');

  print(' 5. Shape');
  Shape rect = Rectangle(4, 5);
  Shape circle = Circle(3);
  print('Rectangle area: ${rect.area()}');
  print('Circle area: ${circle.area().toStringAsFixed(2)}');

  print(' 6. Employee ');
  Employee dev = Developer('Sara', 5000);
  dev.introduce();
  dev.work();

  print(' 7. Flyable');
  var duck = Duck();
  duck.fly();
  duck.swim();

  print(' 8. Drawable');
  Drawable square = Square(5, 'Red');
  Drawable triangle = Triangle(4, 6, 'Blue');
  square.draw();
  print('Square color: ${square.getColor()}');
  triangle.draw();
  print('Triangle color: ${triangle.getColor()}');

  print(' 9. counter');
  var counter = Counter();
  counter.increment();
  counter.increment();
  counter.increment();
  counter.decrement();
  print('Count: ${counter.count}');
  counter.reset();
  print('Count after reset: ${counter.count}');
  counter.decrement(); // already at 0
}
  
