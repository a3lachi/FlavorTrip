import 'package:flutter/material.dart';
import 'profil.dart';
import 'home.dart';
import 'search.dart';
import 'my_recipes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  final _topBarMargin = 60.0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Widget _getMainView(int index) {
    if (index == 0) {
      return Home();
    } else if (index == 1) {
      return Search();
    } else if (index == 2) {
      return Profil();
    } else if (index == 3) {
      return MyRecipes();
    }
    return (const Text('Bug!'));
  }

  PreferredSizeWidget _getAppBar(int index) {
    if (index == 0) {
      return (AppBar(
        toolbarHeight: 0,
        shadowColor: Colors.white,
        backgroundColor: Colors.white,
      ));
    } else if (index == 2) {
      return (AppBar(
        backgroundColor: Colors.red[800],
        title: const Text('Profil'),
      ));
    }
    return (AppBar(
      backgroundColor: Colors.red[800],
      title: const Text('Flavor Trip'),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      // appBar: _getAppBar(_currentIndex),
      body: Column(
        children: [
          SizedBox(height: _topBarMargin, child: SizedBox.shrink()),
          Container(child: _getMainView(_currentIndex)),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.red[800],
          unselectedItemColor: Colors.white70,
          currentIndex: _currentIndex,
          backgroundColor: Colors.amber[600],
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 30,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  size: 30,
                ),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_circle,
                  size: 30,
                ),
                label: 'Profil'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.view_list_rounded,
                  size: 30,
                ),
                label: 'My Recipes'),
          ]),
    ));
  }
}
