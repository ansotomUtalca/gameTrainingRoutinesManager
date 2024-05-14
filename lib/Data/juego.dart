import 'package:game_routine_manager/Data/rutina.dart';
import 'package:game_routine_manager/Data/jugador.dart';

class Juego {
  String name = '';
  List rutinas = [Rutina('')];
  int year = 0;
  String developer = '';
  Jugador player = Jugador('placeholder');

  Juego(String _name, int _year, String _developer) {
    name = _name;
    year = _year;
    developer = _developer;
  }

  void editPlayer(String name) {
    player.editName(name);
  }

  void addRoutine(String text) {
    rutinas.add(text);
  }
}
