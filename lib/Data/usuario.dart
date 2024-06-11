import 'package:game_routine_manager/Data/juego.dart';

class Usuario {
  String name = '';
  List games = [
    Juego('Smash Bros Melee', 2001, 'Nintendo', 0),
    Juego('Apex Legends', 2019, 'Respawn Entertainment', 1)
  ];

  Usuario(String text) {
    name = text;
    //loadGames();
  }

  void addGame(Juego game) {
    games.add(game);
  }

  void loadGames() {
    Juego game = Juego('Smash Bros Melee', 2001, 'Nintendo', 0);
    print(game.name);
    game.addRoutine('practice wavedashing');
    print(game.rutinas[0].description);
    game.addRoutine('edgeguard training');
    addGame(game);
    game = Juego('Apex Legends', 2019, 'Respawn Entertainment', 1);
    game.addRoutine('get champion twice');
    addGame(game);
    print("done");
  }
}
