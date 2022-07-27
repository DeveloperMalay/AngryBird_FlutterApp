import 'package:angrybird/mythems/theme.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Angry Bird Favorite'),
        backgroundColor: AppColors.cardDark,
      ),
      body: const Scaffold(
        backgroundColor: Color.fromARGB(255, 47, 68, 110),
        body: Center(
          child: Text('angry bird favorite'),
        ),
      ),
    );
  }
}
