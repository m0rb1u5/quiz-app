import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
        ),
        const SizedBox(
          height: 24,
        ),
        const StyledText(text: 'Learn Flutter fun way!'),
        const SizedBox(
          height: 16,
        ),
        ElevatedButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.purple,
              textStyle: const TextStyle(
                fontSize: 20,
              )),
          child: const Text('Start Quiz'),
        )
      ],
    );
  }
}
