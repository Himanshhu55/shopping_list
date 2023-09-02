import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/pages/answer_button.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onselectanswer});
  final void Function(String answer) onselectanswer;
  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentquestionindex = 0;
  void answerquestions(String selectedAnswer) {
    widget.onselectanswer(selectedAnswer);
    setState(() {
      currentquestionindex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentquestions = questions[currentquestionindex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        // padding: const EdgeInsets.symmetric(vertical: 20),
        margin: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currentquestions.text,
              style: GoogleFonts.lato(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentquestions.getShuffledAnswers().map((answer) {
              return AnswerButton(
                  answertext: answer,
                  onTap: () {
                    answerquestions(answer);
                  });
            })
          ],
        ),
      ),
    );
  }
}
