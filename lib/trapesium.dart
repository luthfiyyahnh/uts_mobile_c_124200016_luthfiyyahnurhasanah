import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';

class TrapesiumApp extends StatefulWidget {
  @override
  _TrapesiumAppState createState() => _TrapesiumAppState();
}

class _TrapesiumAppState extends State<TrapesiumApp> {
  double tinggi = 0;
  double atas = 0;
  double bawah = 0;
  double sisi1 = 0;
  double sisi2 = 0;
  double sisi3 = 0;
  double sisi4 = 0;

  var _nama = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Menghitung Trapesium"),
        backgroundColor: Colors.blue,
        centerTitle: true,
        actions: <Widget>[
          new IconButton(
            icon: Icon(
              Icons.calculate,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.all(20),
            child: new Column(
              children: <Widget>[
                new Padding(
                  padding: new EdgeInsets.only(top: 20),
                ),
                new Row(
                  children: <Widget>[
                    Expanded(
                        child: TextField(
                      onChanged: (txt) {
                        setState(() {
                          tinggi = double.parse(txt);
                        });
                      },
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      decoration: InputDecoration(
                          labelText: "Input Tinggi",
                          suffix: Text("m"),
                          border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(10)),
                          hintText: "Tinggi"),
                    )),
                    SizedBox(width: 10),
                    Expanded(
                        child: TextField(
                      onChanged: (txt) {
                        setState(() {
                          atas = double.parse(txt);
                        });
                      },
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      decoration: InputDecoration(
                          labelText: "Input Atas",
                          suffix: Text("m"),
                          border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(10)),
                          hintText: "Atas"),
                    )),
                    SizedBox(width: 10),
                    Expanded(
                        child: TextField(
                      onChanged: (txt) {
                        setState(() {
                          bawah = double.parse(txt);
                        });
                      },
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      decoration: InputDecoration(
                          labelText: "Input Bawah",
                          suffix: Text("m"),
                          border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(10)),
                          hintText: "Bawah"),
                    )),
                  ],
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 20),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                  child: RaisedButton(
                    onPressed: () {
                      var route = new MaterialPageRoute(
                        builder: (BuildContext) => new TrapesiumPage(
                            input_tinggi: tinggi,
                            input_atas: atas,
                            input_bawah: bawah),
                      );
                      Navigator.of(context).push(route);
                    },
                    padding: EdgeInsets.all(10.0),
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text(
                      "Hitung Luas",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
          new Container(
            padding: new EdgeInsets.all(20),
            child: new Column(
              children: <Widget>[
                new Padding(
                  padding: new EdgeInsets.only(top: 20),
                ),
                new Row(
                  children: <Widget>[
                    Expanded(
                        child: TextField(
                      onChanged: (txt) {
                        setState(() {
                          sisi1 = double.parse(txt);
                        });
                      },
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      decoration: InputDecoration(
                          labelText: "Input Sisi1",
                          suffix: Text("m"),
                          border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(10)),
                          hintText: "Sisi1"),
                    )),
                    SizedBox(width: 10),
                    Expanded(
                        child: TextField(
                      onChanged: (txt) {
                        setState(() {
                          sisi2 = double.parse(txt);
                        });
                      },
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      decoration: InputDecoration(
                          labelText: "Input Sisi2",
                          suffix: Text("m"),
                          border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(10)),
                          hintText: "Sisi2"),
                    )),
                    SizedBox(width: 10),
                    Expanded(
                        child: TextField(
                      onChanged: (txt) {
                        setState(() {
                          sisi3 = double.parse(txt);
                        });
                      },
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      decoration: InputDecoration(
                          labelText: "Input Sisi3",
                          suffix: Text("m"),
                          border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(10)),
                          hintText: "Sisi3"),
                    )),
                    SizedBox(width: 10),
                    Expanded(
                        child: TextField(
                      onChanged: (txt) {
                        setState(() {
                          sisi4 = double.parse(txt);
                        });
                      },
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      decoration: InputDecoration(
                          labelText: "Input Sisi4",
                          suffix: Text("m"),
                          border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(10)),
                          hintText: "Sisi4"),
                    )),
                  ],
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 20),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                  child: RaisedButton(
                    onPressed: () {
                      var route = new MaterialPageRoute(
                        builder: (BuildContext) => new Trapesium_KelPage(
                          input_sisi1: sisi1,
                          input_sisi2: sisi2,
                          input_sisi3: sisi3,
                          input_sisi4: sisi4,
                        ),
                      );
                      Navigator.of(context).push(route);
                    },
                    padding: EdgeInsets.all(10.0),
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text(
                      "Hitung Keliling",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TrapesiumPage extends StatelessWidget {
  TrapesiumPage(
      {@required this.input_tinggi,
      @required this.input_atas,
      @required this.input_bawah});
  final double input_tinggi;
  final double input_atas;
  final double input_bawah;

  int thasil;
  String cHasil;
  int hasil;

  @override
  Widget build(BuildContext context) {
    double hasil = (input_tinggi * 0.5 * (input_atas + input_bawah));
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Hasil"),
      ),
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20,
              child: Container(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
              child: Container(
                color: Colors.white,
              ),
            ),
            Text(
              "Panjang : $input_tinggi m",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black54,
                fontFamily: "Acme",
              ),
            ),
            SizedBox(height: 5),
            Text(
              "Lebar : $input_atas m",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Colors.black54,
                  fontFamily: "Acme"),
            ),
            SizedBox(height: 5),
            Text(
              "Jadi Luasnya adalah : ",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Colors.black54,
                  fontFamily: "Acme"),
            ),
            EasyRichText(
              '$hasil m2',
              patternList: [
                EasyRichTextPattern(
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                  targetString: '$hasil m',
                ),
                EasyRichTextPattern(
                  targetString: '2',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                  superScript: true,
                  stringBeforeTarget: 'm',
                  matchWordBoundaries: false,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Trapesium_KelPage extends StatelessWidget {
  Trapesium_KelPage(
      {@required this.input_sisi1,
      @required this.input_sisi2,
      @required this.input_sisi3,
      @required this.input_sisi4});
  final double input_sisi1;
  final double input_sisi2;
  final double input_sisi3;
  final double input_sisi4;

  int thasil;
  String cHasil;
  int hasil;

  @override
  Widget build(BuildContext context) {
    double hasil = (input_sisi1 + input_sisi2 + input_sisi3 + input_sisi4);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Hasil"),
      ),
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20,
              child: Container(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
              child: Container(
                color: Colors.white,
              ),
            ),
            Text(
              "Panjang : $input_sisi1 m",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black54,
                fontFamily: "Acme",
              ),
            ),
            SizedBox(height: 5),
            Text(
              "Lebar : $input_sisi2 m",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Colors.black54,
                  fontFamily: "Acme"),
            ),
            SizedBox(height: 5),
            Text(
              "Lebar : $input_sisi3 m",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Colors.black54,
                  fontFamily: "Acme"),
            ),
            SizedBox(height: 5),
            Text(
              "Lebar : $input_sisi4 m",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Colors.black54,
                  fontFamily: "Acme"),
            ),
            SizedBox(height: 5),
            Text(
              "Jadi Kelilingnya adalah : ",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Colors.black54,
                  fontFamily: "Acme"),
            ),
            EasyRichText(
              '$hasil m2',
              patternList: [
                EasyRichTextPattern(
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                  targetString: '$hasil m',
                ),
                EasyRichTextPattern(
                  targetString: '2',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                  superScript: true,
                  stringBeforeTarget: 'm',
                  matchWordBoundaries: false,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
