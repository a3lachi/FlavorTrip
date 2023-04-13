import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  State<Search> createState() => _ProfilState();
}

class _ProfilState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: const [
          Text('SEARCH'),
        ],
      ),
    );
  }
}
