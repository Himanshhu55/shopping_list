import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/pages/questions_identifier.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    // final bool isCorrectAnswer;
    return Container(
      height: 300,
      child: SingleChildScrollView(
        //scrollDirection: Axis.vertical,
        child: Column(
          children: summaryData.map((data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                QuestionsIdentifier(
                  isCorrectAnswer:
                      data['user_answer'] == data['correct_answer'],
                  questionIndex: data['questions_index'] as int,
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['questions'] as String,
                        style: GoogleFonts.lato(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        data['user_answer'] as String,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: data['user_answer'] == data['correct_answer']
                              ? Colors.blue[300]
                              : Colors.red[300],
                        ),
                      ),
                      //  const SizedBox(height: 5,),
                      Text(
                        data['correct_answer'] as String,
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color:
                                data['correct_answer'] == data['correct_answer']
                                    ? Colors.blue[300]
                                    : Colors.red[300]),
                      )
                    ],
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
