import 'dart:io';

class Animal {
  String species = '';
  String breed = '';
  int age;

  Animal(this.species, this.breed, this.age);
  
  // Іменований конструктор для новонародженої тварини
  Animal.newborn(String species, String breed)
  : species = species, 
    breed = breed, 
    age = 0; 

  bool isAdult() {
    return age > 2;
  }

  void displayInfo() {
    print('Вид: $species, Порода: $breed, Вік: $age');
  }
}

void main() {
  print("-------- Task 2 --------");

  var dog = Animal('Dog', 'Golden retriever', 5);
  dog.displayInfo();
  print("Is the dog an adult? ${dog.isAdult()}");

  var cat = Animal.newborn('Cat', 'Domeastic cat'); 
  cat.displayInfo();
  print("Is the cat an adult? ${cat.isAdult()}");
}
