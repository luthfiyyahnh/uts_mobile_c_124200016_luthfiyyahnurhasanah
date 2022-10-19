import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';

class PersegiApp extends StatefulWidget {
  @override
  _PersegiAppState createState() => _PersegiAppState();
}

class _PersegiAppState extends State<PersegiApp> {
  double sisi = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Menghitung Luas Persegi"),
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
                          sisi = double.parse(txt);
                        });
                      },
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      decoration: InputDecoration(
                          labelText: "Input Sisi",
                          suffix: Text("m"),
                          border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(10)),
                          hintText: "Sisi"),
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
                        builder: (BuildContext) =>
                            new PersegiPage(input_sisi: sisi),
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
        ],
      ),
    );
  }
}

class PersegiPage extends StatelessWidget {
  PersegiPage({@required this.input_sisi});
  final double input_sisi;

  int thasil;
  String cHasil;
  int hasil;

  @override
  Widget build(BuildContext context) {
    double hasil = (input_sisi * input_sisi * 1.0);
    double hasil_keliling = (input_sisi * 4 * 1.0);
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
              "sisi : $input_sisi m",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black54,
                fontFamily: "Acme",
              ),
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
            SizedBox(height: 5),
            Text(
              "Jadi Keliling adalah : ",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Colors.black54,
                  fontFamily: "Acme"),
            ),
            EasyRichText(
              '$hasil_keliling m',
              patternList: [
                EasyRichTextPattern(
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                  targetString: '$hasil_keliling m',
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
