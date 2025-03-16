import 'dart:io';

mixin Playing {
  void makeSound() {
    print('Playing music...');
  }
  void stopPlaying (){
    print('Stop playing'); 
  }
}

class Piano with Playing{
  void tuning() {
    print('Tuning the instrument...');
  }
}
class Guitar with Playing{
  void strumming() {
  print('Strumming the guitar...');
}
}

void main (){
  Piano piano = Piano();
   print('--- Piano ---');
   piano.tuning();
   piano.makeSound();
   piano.stopPlaying();
  Guitar guitar = Guitar();
   print('--- Guitar ---');
   guitar.strumming();
   guitar.makeSound();
   guitar.stopPlaying();
}

