import 'questions.dart';

class QuizBrain {
  int _questionsNumber = 0;

  final List<Question> _questionsBank = [
    Question(
        questionsText: 'Some cats are actually allergic to humans',
        questionAnswer: true),
    Question(
        questionsText: 'You can lead a cow down stairs but not up stairs.',
        questionAnswer: false),
    Question(
        questionsText:
            'Approximately one quarter of human bones are in the feet.',
        questionAnswer: true),
    Question(questionsText: 'A slug\'s blood is green.', questionAnswer: true),
    Question(
        questionsText: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".',
        questionAnswer: true),
    Question(
        questionsText: 'It is illegal to pee in the Ocean in Portugal.',
        questionAnswer: true),
    Question(
        questionsText:
            'No piece of square dry paper can be folded in half more than 7 times.',
        questionAnswer: false),
    Question(
        questionsText:
            'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        questionAnswer: true),
    Question(
        questionsText:
            'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        questionAnswer: false),
    Question(
        questionsText:
            'The total surface area of two human lungs is approximately 70 square metres.',
        questionAnswer: true),
    Question(
        questionsText: 'Google was originally called \"Backrub\".',
        questionAnswer: true),
    Question(
        questionsText:
            'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        questionAnswer: true),
    Question(
        questionsText:
            'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        questionAnswer: true),
  ];

  void nextQuestion() {
    if (_questionsNumber < _questionsBank.length - 1) {
      _questionsNumber++;
    }
  }

  String getQuestionText(int questionsNumber) {
    return _questionsBank[_questionsNumber].questionsText;
  }

  bool getQuestionAnswer(int questionsNumber) {
    return _questionsBank[_questionsNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionsNumber >= _questionsBank.length - 1) {
      print('waktunya reset pertanyaan');
      return true;
    } else {
      print('lanjutkan pertanyaan');
      return false;
    }
  }

  void reset() {
    _questionsNumber = 0;
  }
}
