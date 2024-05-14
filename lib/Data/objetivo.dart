class Objetivo {
  String description = '';
  bool finished = false;

  void clearObjective() {
    finished = true;
  }

  void resetObjective() {
    finished = false;
  }

  void editDescription(String text) {
    description = text;
  }

  Objetivo(String text) {
    description = text;
  }
}
