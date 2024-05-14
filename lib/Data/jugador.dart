class Jugador {
  String name = '';
  String rank = '';
  bool rankVisible = false;
  List friends = [];

  void editRank(String text) {
    rankVisible = true;
    rank = text;
  }

  void deleteRank() {
    rankVisible = false;
  }

  void addFriend(String friendName) {
    //match name input with Friend profile online
  }

  void removeFriend() {
    //remove selected Friend on the list
  }

  void editName(String text) {
    name = text;
  }

  Jugador(String playerName) {
    name = playerName;
  }
}
