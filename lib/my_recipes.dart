import 'package:flutter/material.dart';

class MyRecipes extends StatefulWidget {
  @override
  State<MyRecipes> createState() => _ProfilState();
}

class _ProfilState extends State<MyRecipes> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: const [
          Text('MY RECIPES'),
        ],
      ),
    );
  }
}
