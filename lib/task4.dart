import 'dart:io';

class Playable {
  void play() {
  }
}

class Soccer implements Playable{
  @override
  void play() {
    print('Playing soccer...');
  }
  }

class Basketball implements Playable{
  @override
  void play() {
    print('Playing basketball...');
  }
}

class SportsClub {
  List<Playable> sports = []; // Список видів спорту

  // Додавання спорту в клуб
  void addSport(Playable sport) {
    sports.add(sport);
  }

  void playSports() {
    for (var sport in sports) {
      sport.play(); // Для кожного виду спорту викликаємо метод play
    }
  }
} 

void main() {
  SportsClub club = SportsClub();
  Soccer soccer = Soccer();
  print('--- Soccer ---');
  club.addSport(soccer);

  Basketball basketball = Basketball();
  print('--- Basketball ---');
  club.addSport(basketball);

  club.playSports();
}