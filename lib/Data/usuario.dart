import 'package:game_routine_manager/Data/juego.dart';

class Usuario {
  String name = '';
  List games = [Juego('', 0, '')];

  Usuario(String text) {
    name = text;
    games.remove(0);
  }

  void addGame(Juego game) {
    games.add(game);
  }
}
