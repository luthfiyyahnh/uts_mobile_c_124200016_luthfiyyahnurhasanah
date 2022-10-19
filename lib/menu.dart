import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_task3/hitung.dart';
import 'package:flutter_task3/segitiga.dart';
import 'package:flutter_task3/lingkaran.dart';
import 'package:flutter_task3/persegi.dart';
import 'package:flutter_task3/trapesium.dart';

class MenuPage extends StatefulWidget {
  static String tag = 'menu-page';
  const MenuPage({Key key}) : super(key: key);

  @override
  State<MenuPage> createState() => MyHomePage();
}

class MyHomePage extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(title: Text('HOME')),
      body: Container(
        margin: EdgeInsets.only(top: 60),
        child: Column(
          children: [
            Text(
              "Pilih Menu",
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: "Acme",
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                new GestureDetector(
                  child: Container(
                    height: 120,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.orange[600],
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.signal_cellular_null,
                            size: 80,
                          ),
                          Text('Segitiga')
                        ],
                      ),
                    ),
                  ),
                  onTap: () {
                    Route route =
                        MaterialPageRoute(builder: (context) => SegitigaApp());
                    Navigator.push(context, route);
                  },
                ),
                new GestureDetector(
                  child: Container(
                    height: 120,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.orange[600],
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.architecture_outlined,
                            size: 80,
                          ),
                          Text('Lingkaran')
                        ],
                      ),
                    ),
                  ),
                  onTap: () {
                    Route route =
                        MaterialPageRoute(builder: (context) => LingkaranApp());
                    Navigator.push(context, route);
                  },
                ),
              ],
            ),
            Row(
              children: [
                new GestureDetector(
                  child: Container(
                    height: 50,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                new GestureDetector(
                  child: Container(
                    height: 120,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.orange[600],
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.architecture,
                            size: 80,
                          ),
                          Text('Trapesium')
                        ],
                      ),
                    ),
                  ),
                  onTap: () {
                    Route route =
                        MaterialPageRoute(builder: (context) => TrapesiumApp());
                    Navigator.push(context, route);
                  },
                ),
                new GestureDetector(
                  child: Container(
                    height: 120,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.orange[600],
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.crop_square_outlined,
                            size: 80,
                          ),
                          Text('Persegi')
                        ],
                      ),
                    ),
                  ),
                  onTap: () {
                    Route route =
                        MaterialPageRoute(builder: (context) => PersegiApp());
                    Navigator.push(context, route);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
