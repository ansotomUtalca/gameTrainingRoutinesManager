import 'package:game_routine_manager/Data/rutina.dart';
import 'package:game_routine_manager/Data/jugador.dart';
import 'package:game_routine_manager/main.dart';

class Juego {
  String _genero = '';
  String _name = '';
  List<Rutina> _rutinas = [];
  int _year = 0;
  String _developer = '';
  Jugador _player = Jugador('placeholder');

  Juego(String name, int year, String developer, String genero) {
    _name = name;
    _year = year;
    _developer = developer;
    _genero = genero;
  }

  void editPlayer(String name) {
    _player.editName(name);
  }

  void addRoutine(Rutina rutina) {
    _rutinas.add(rutina);
  }

  String showName() {
    return _name;
  }

  Rutina getRoutine(int index) {
    return _rutinas[index];
  }

  String getRoutineName(int index) {
    return _rutinas[index].showName();
  }

  String getObjectiveName(int routine, int objective) {
    return _rutinas[routine].showObjective(objective);
  }

  String getInfo(int index) {
    if (index == 0) return _developer;
    if (index == 1) return _year.toString();
    if (index == 2) return _genero;
    return '';
  }
}
