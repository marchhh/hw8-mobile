import 'dart:math';

class Game {
  static const defaultMaxRandom = 100;
  int? _answer;
  int _guessCount = 0;
  static final List<int> guessCountList = [];

  Game({int maxRandom = defaultMaxRandom}) {
    var r = Random();
    _answer = r.nextInt(maxRandom) + 1;
  }

  int get answer => _answer!;

  int get guessCount {
    return _guessCount;
  }


  void addCountList() {
    guessCountList.add(_guessCount);
  }

  int doGuess(int num) {
    if (num > _answer!) {
      _guessCount++;
      return 1;
    } else if (num < _answer!) {
      _guessCount++;
      return -1;
    } else{
      _guessCount++;
      return 0;
    }

  }
}
