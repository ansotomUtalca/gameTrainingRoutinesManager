class Objetivo {
  String _description = '';
  int _count = 0;
  int _progress = 0;
  bool _binary = false;
  bool _finished = false;

  void clearObjective() {
    _finished = true;
  }

  void resetObjective() {
    _finished = false;
  }

  void editDescription(String text) {
    _description = text;
  }

  void editCount(int count) {
    _count = count;
    if (count == 0)
      _binary = false;
    else
      _binary = true;
  }

  String showName() {
    return _description;
  }

  bool isComplete() {
    return _finished;
  }

  bool isBinary() {
    return _binary;
  }

  bool progressCount() {
    _progress++;
    if (_progress == _count) {
      _finished = true;
      return true;
    } else
      return false;
  }

  int getProgress() {
    return _progress;
  }

  Objetivo(String text, int count) {
    _description = text;
    _count = count;
    if (count == 0) _binary = false;
  }
}
