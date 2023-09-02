import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/quiz-logo.png",
          width: 200,
          //color: Color.fromARGB(223, 255, 255, 255),
        ),
        const SizedBox(
          height: 60,
        ),
        Text(
          "Learn Flutter in simple way!",
          style: GoogleFonts.lato(
            fontSize: 24,
            color: const Color.fromARGB(255, 147, 136, 167),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 20,
            ),
          ),
          icon: const Icon(Icons.arrow_right_alt),
          onPressed: startQuiz,
          label: const Text("Start Quiz"),
        ),
      ],
    );
  }
}
