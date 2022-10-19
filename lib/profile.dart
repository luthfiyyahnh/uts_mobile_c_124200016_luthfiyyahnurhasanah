import 'dart:html';

import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  static String tag = 'menu-page';
  const ProfilePage({Key key}) : super(key: key);

  @override
  State<ProfilePage> createState() => MyProfilePage();
}

class MyProfilePage extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final alucard = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/alucard.jpg'),
        ),
      ),
    );
    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Luthfiyyah Nur Hasannah',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );
    final welcome1 = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Sistem Informasi',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );
    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        '124200016',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );
    final lorem1 = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Cilacap, 15 September 2001',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );
    final lorem2 = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Hobi : Jajan',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );
    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.lightBlueAccent,
        ]),
      ),
      child: Column(
        children: <Widget>[alucard, welcome, welcome1, lorem, lorem1, lorem2],
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('PROFILE'),
      ),
      body: body,
    );
  }
}
