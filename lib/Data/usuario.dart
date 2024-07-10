import 'package:game_routine_manager/Data/juego.dart';

class Usuario {
  String name = '';
  List<Juego> games = [];

  Usuario(String text) {
    name = text;
  }

  void addGame(Juego game) {
    games.add(game);
  }

  void showGame(int index) {
    print(games[index].showName());
  }
}
