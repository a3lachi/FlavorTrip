import 'package:flutter/material.dart';

class Profil extends StatefulWidget {
  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
              margin: const EdgeInsets.only(top: 30.0),
              height: 100,
              child: Container(
                  // color: Colors.green[600],
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: Row(
                        children: [
                          Container(
                              margin: const EdgeInsets.only(right: 20.0),
                              width: 80,
                              child: Image.asset('assets/images/prfl.png')),
                          const Text('Simo',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 29)),
                        ],
                      )))),
          Container(
            margin: const EdgeInsets.only(top: 40.0),
            child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.black12,
                  border: Border.all(
                    color: Colors.red.shade800,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: Container(
                    padding: const EdgeInsets.all(40.0),
                    height: 287,
                    width: MediaQuery.of(context).size.width - 40,
                    child: Container(
                      child: const Text('Email : ',
                          style: TextStyle(fontSize: 19)),
                    ))),
          )
        ],
      ),
    );
  }
}
