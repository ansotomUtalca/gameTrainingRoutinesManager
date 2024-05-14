import 'package:game_routine_manager/Data/objetivo.dart';

class Rutina {
  String description = '';
  DateTime schedule = DateTime(
      DateTime.now().year, DateTime.now().month, DateTime.now().day, 13, 30, 0);
  bool hasSchedule = true;
  bool complete = false;
  bool isTimed = false;
  List objetivos = [Objetivo('Placeholder')];

  void resetRoutine() {
    for (Objetivo o in objetivos) {
      o.resetObjective();
    }
  }

  void addObjective(String text) {
    objetivos.add(Objetivo(text));
  }

  void editObjective(int index, String text) {
    if (index >= objetivos.length) return;
    objetivos[index].editDescription(text);
  }

  void deleteObjective(int index) {
    objetivos.remove(index);
  }

  Rutina(String description) {
    description = description;
  }
}
