import 'dart:io';

//Клас Rectangle без equatable
class Rectangle {
  final double width;
  final double height;
  Rectangle(this.width, this.height); 

 // Порівняння об'єктів класу Rectangle
  @override
   bool operator ==(Object other) =>
     identical(this, other)||  
     other is Rectangle &&
     runtimeType == other.runtimeType &&
     width == other.width &&
     height == other.height;
 // Генерація hashCode 
   @override
     int get hashCode => width.hashCode ^ height.hashCode;

 // Виведення об'єкта
   @override
     String toString() {
      return 'Rectangle(width: $width, height: $height)';
    }
}

void main() {
  // Створення екземплярів Rectangle
  Rectangle rect1 = Rectangle(10.0, 20.0);
  Rectangle rect2 = Rectangle(10.0, 20.0);
  Rectangle rect3 = Rectangle(15.5, 25.0);
  
  // Перевірка порівняння між Rectangle
  print(rect1 == rect2);
  print(rect1 == rect3);
  print(rect2 == rect3);
  print(rect2 == rect2);
}