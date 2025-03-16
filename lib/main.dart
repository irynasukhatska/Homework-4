import 'dart:io';

class Student {

  // Creating fileds inside the class
  String firstName = '';
  String lastName = '';
  String course = '';
  String specialty = '';
  String universityName = '';
    
  // Class constructor
  Student(this.firstName, this.lastName, this.course, this.specialty, this.universityName);

  // Methods
  void displayInfo() {
  print('Університет: $universityName');
  print('Імʼя: $firstName, Прізвище: $lastName, Курс: $course, Спеціальність: $specialty');
  }
}


void main() {
print("-------- Task 1 --------");
// Creating objects
Student mogilyankaUniversity  = Student('Олег', 'Соколик', '1', 'Політологія', 'Могилянка');
Student kpiUniversity  = Student('Назад', 'Нагорняк', '2', 'Інформаційні технології', 'КПІ');

// Виклик методу для виводу інформації
mogilyankaUniversity.displayInfo();
kpiUniversity.displayInfo();
}
