import 'package:angrybird/mythems/theme.dart';
import 'package:angrybird/widgets/birdcard_screen.dart';
import 'package:flutter/material.dart';

class AngrybirdScreen extends StatefulWidget {
  const AngrybirdScreen({Key? key}) : super(key: key);

  @override
  State<AngrybirdScreen> createState() => _AngrybirdScreenState();
}

class _AngrybirdScreenState extends State<AngrybirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Angry Bird'),
        backgroundColor: AppColors.cardDark,
      ),
      body: Scaffold(
        backgroundColor: const Color.fromARGB(255, 47, 68, 110),
        body: Center(
          child: BirdCard(),
        ),
      ),
    );
  }
}
