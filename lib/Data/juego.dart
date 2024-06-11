import 'package:game_routine_manager/Data/rutina.dart';
import 'package:game_routine_manager/Data/jugador.dart';

class Juego {
  int ID = 0;
  String name = '';
  List rutinas = [Rutina('')];
  int year = 0;
  String developer = '';
  Jugador player = Jugador('placeholder');

  Juego(String name, int year, String developer, int ID) {
    name = name;
    year = year;
    developer = developer;
    ID = ID;
  }

  void editPlayer(String name) {
    player.editName(name);
  }

  void addRoutine(String text) {
    rutinas.add(text);
  }
}
