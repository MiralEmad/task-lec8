

void main() {
  // to check on question 1
  Car myCar = Car('Toyota', 'Corolla', 2022);
  myCar.displayInfo(); 
  print('-------------------');

  // question 2 objects
  Student s1 =Student('miral', 20, 97);
  s1.showInfo();
  print("");
  Student s2 =Student.guest();
  s2.showInfo();
  print('---------------------');

  // question 3 objects
  BankAccount account = BankAccount();

  account.balance = 1000;
  print('Balance: ${account._balance}');

  account.balance = -500;
  print('Balance: ${account._balance}');
  print('--------------------');

  // question 4 objects
  Animal dog = Dog();
  Animal cat = Cat();

  dog.makeSound();
  cat.makeSound();
  print('----------------------');

  // question 5 object
  Employee emp = Employee("Miral", 20, 8000);
  emp.displayInfo();
  print('----------------------');

  // question 6 objects
BorrowedBook book = BorrowedBook("Flutter Basics", "John");

  print("Book: ${book.title}");
  print("Author: ${book.author}");
  print("");

  book.borrowBook();
  book.borrowBook();
  book.returnBook();
  book.getStatus();

}

// question 1
class Car{
  // propeties
  String? brand;
  String? model;
  int? year;

  // constructor
  Car(this.brand , this.model , this.year);

  //method
  void displayInfo(){
    print('Brand: $brand');
    print('Model: $model');
    print('Year: $year');
  }
}

// question 2
class Student{
  //properties
  String? name;
  int? age;
  double? grade;

  //default constructor
  Student(this.name , this.age , this.grade);
  // named constructor
  Student.guest()
   :name='guest',
   age = 20,
   grade = 90;

  //method
   void showInfo(){
    print('Name: $name');
    print('age: $age');
    print('grade: $grade');
   }
}

//question 3
class BankAccount{
 //properties
 double _balance =0;

 // void set
 set balance (double value ){
  if(value < 0){
    print('invallid balance');
  }
  else{
    _balance =value; // like put the value in balance 
  }
 }
 //return type get
 double get(){
  return _balance;
 }
 //another form for get
 // double get balance => _balance;

}

// question 4
class Animal{
 //properties
 String? name;

 // method
 void makeSound(){
  print('$name: mekes a sound');
 }
}
 // first child class
class Dog extends Animal{
  @override
   void makeSound(){
    print('dog: woof!');
   }
}

 // second child class
class Cat extends Animal{
  @override
  void makeSound(){
    print('cat: meow!');
  }
}

// question 5
class Person{
 //properties
  String? name;
  int? age;
 
 //constructor
  Person(this.name , this.age);
}

//child class
class Employee extends Person{
 //additional property
 double? salary;

 //constructor
 Employee(String name , int age , this.salary) : super(name, age);

 //method
 void displayInfo() {
    print("Name: $name");
    print("Age: $age");
    print("Salary: $salary");
  }
}

// question 6
class Book {
  //properties
  String title;
  String author;

  //constructor
  Book(this.title, this.author);
}
//child class
class BorrowedBook extends Book {
  //additional property
  bool _isBorrowed = false;

  //constructor
  BorrowedBook(String title, String author) : super(title, author);

  //method
  void borrowBook() {
    if (_isBorrowed) {
      print("This book is already borrowed.");
    } else {
      _isBorrowed = true;
      print("Borrowed successfully.");
    }
  }
   
  //method
  void returnBook() {
    if (!_isBorrowed) {
      print("This book is already available.");
    } else {
      _isBorrowed = false;
      print("Book returned successfully.");
    }
  }

  //method
  void getStatus() {
    print("Current Status: ${_isBorrowed ? "Borrowed" : "Available"}");
  }
}
