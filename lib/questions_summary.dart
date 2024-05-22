import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  bool isCorrectAnswer(Map<String, Object> data) {
    return data['user_answer'] == data['correct_answer'];
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              children: [
                CircleAvatar(
                  backgroundColor: isCorrectAnswer(data) ? Colors.blue.shade100 : Colors.pink.shade200,
                  child: Text(
                    ((data['question_index'] as int) + 1).toString(),
                  ),
                ),
                const SizedBox(width: 20,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['question'] as String,
                        style: GoogleFonts.lato(
                          color: Colors.purple.shade50,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        data['user_answer'] as String,
                        style: GoogleFonts.lato(
                          color: Colors.pink.shade200,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        data['correct_answer'] as String,
                        style: GoogleFonts.lato(
                          color: Colors.blue.shade100,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
