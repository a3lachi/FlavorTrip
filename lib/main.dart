import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[800],
        title: const Text('Flavor Trip'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Container(child: const Text('Heey 👌🏼'))),
              ],
            ),
          ),
          Container(
            height: 60,
            color: Colors.amber[700],
            child: Column(
              children: [
                Container(
                  height: 50,
                  color: Colors.blue[500],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Center(
                          child: Row(children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Profil'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Recipe'),
                        )
                      ])),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
