import 'package:flutter/material.dart';
import 'package:quiz_app/initial_page.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({required this.colors, super.key});

  StartScreen.purple({super.key}) : colors = [Colors.blue, Colors.purple];

  final List<Color> colors;

  static const Alignment startAlignment = Alignment.topLeft;
  static const Alignment endAlignment = Alignment.bottomRight;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: InitialPage(),
      ),
    );
  }
}
