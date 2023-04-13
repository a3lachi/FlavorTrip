import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _ProfilState();
}

class _ProfilState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: const [
          Text('HOME'),
        ],
      ),
    );
  }
}
