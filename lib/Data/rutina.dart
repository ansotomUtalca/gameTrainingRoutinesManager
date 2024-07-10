import 'package:game_routine_manager/Data/objetivo.dart';

class Rutina {
  String _description = '';
  bool _complete = false;
  bool _active = false;
  List<Objetivo> objetivos = [];
  List<String> historial = [];

  void resetRoutine() {
    for (Objetivo o in objetivos) {
      o.resetObjective();
    }
  }

  Objetivo getObjective(int index) {
    return objetivos[index];
  }

  void addObjective(String text, int count) {
    objetivos.add(Objetivo(text, count));
  }

  void editObjective(int index, String text) {
    if (index >= objetivos.length) return;
    objetivos[index].editDescription(text);
  }

  void deleteObjective(int index) {
    objetivos.remove(index);
  }

  String showName() {
    return _description;
  }

  String showObjective(int index) {
    return objetivos[index].showName();
  }

  int objectiveCount() {
    return objetivos.length;
  }

  int historyCount() {
    return historial.length;
  }

  bool isActive() {
    return _active;
  }

  void activate(bool active) {
    _active = active;
  }

  void addToHistory(String hecho, String momento) {
    historial.add(hecho);
    historial.add(momento);
  }

  void checkObjectiveCompletion() {
    for (Objetivo o in objetivos) {
      if (o.isComplete() == false) {
        return;
      }
    }
    _complete = true;
    addToHistory(_description, 'Today');
  }

  Rutina(String description) {
    _description = description;
  }
}
