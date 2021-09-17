import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(q: 'Messi is the best player in the world', a: true),
    Question(q: 'Liverpool have won 6 champions league', a: true),
    Question(
        q: 'Stamford Bridge is the home stadium of Chelsea Football Club.',
        a: true),
    Question(
        q: 'San Siro is the Home stadium of Ac Milan and Inter Milan', a: true),
    Question(
        q: 'Ronaldo has scored the Highest Number of International goals',
        a: true),
    Question(
        q: 'Manchester United have won Four champions League titles', a: false),
    Question(q: 'Kante wears the no 4 jersey for Chelsea', a: false),
    Question(q: 'Virgil Van Dijk went a full season without getting Dribbled', a: true),
    Question(
        q: 'The highest Goal tally ever scored in the premier league in a season is 40.',
        a: false),
    Question(
        q: 'A penalty is retaken if the goal keeper comes off his line before it is taken',
        a: true),
    Question(q: 'Only Mohammed Salah has scored in Five consecutive Premier League Opening Games.', a: true),
    Question(
        q: 'A Referee can overturn VAR Decision',
        a: true),
    Question(
        q: 'Manchester United Have 20 Premier League titles',
        a: true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('now returning true');
      return true;
    } else {
      return false;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  void reset() {
    _questionNumber = 0;
  }
}
