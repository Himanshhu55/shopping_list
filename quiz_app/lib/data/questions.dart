import 'package:quiz_app/pages/quiz_questions.dart';

const questions = [
  QuizQuestions(
    "What are thebuilding blocks of Flutter UIs?",
    [
      "widgets",
      "Components",
      "Blocks",
      "functions",
    ],
  ),
  QuizQuestions(
    "How are Flutter UIs built?",
    [
      "By combining widgets in code",
      "By combining widgets in visual editor",
      "By defining widgets in config files",
      "By Using XCode for iOS and Android Studio for Android"
    ],
  ),
  QuizQuestions(
    "What is the purpose of StatefulWidget?",
    [
      "Update UI as data changes",
      "Update data as UI changes",
      "Ignore Data Changes",
      "Rendor UI that does not depend on data",
    ],
  ),
  QuizQuestions(
    "Which Widget should you try to use more often : StatelessWidget or StatefulWidget?",
    [
      "StalessWidget",
      "StatefulWidget",
      "Both are equally good",
      "None of the above"
    ],
  ),
  QuizQuestions(
    "What happens if you change data in a StatelessWidget?",
    [
      "The UI is not Updated",
      "The UI is updated",
      "The closest StatefulWidget is updated",
      "Any nested StatefulWidgets are updated"
    ],
  ),
  QuizQuestions(
    "How Should you update data inside of StatefulWidgets?",
    [
      "By calling SetState()",
      "By calling updatedata()",
      "By calling updateUI()",
      "By calling updateState()",
    ],
  ),
];
