import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';


class LingkaranApp extends StatefulWidget {
  @override
  _LingkaranAppState createState() => _LingkaranAppState();
}

class _LingkaranAppState extends State<LingkaranApp> {
  double ruas = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Menghitung Luas Lingkaran"),
        backgroundColor: Colors.blue,
        centerTitle: true,
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.calculate,
              color: Colors.white,
            ),
            onPressed: (){},
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
                  padding: new EdgeInsets.only(top:20),
                ),
                new Row(
                  children: <Widget>[
                    Expanded(
                        child: TextField(
                          onChanged: (txt){
                            setState(() {
                              ruas = double.parse(txt);
                            });
                          },
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                          ),
                          decoration: InputDecoration(
                              labelText: "Input Ruas",
                              suffix: Text("m"),
                              border: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(10)
                              ),
                              hintText: "Ruas"
                          ),
                        )
                    ),
                  ],
                ),
                new Padding(
                  padding: new EdgeInsets.only(top:20),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: 10,
                      right: 10,
                      bottom: 20
                  ),
                  child: RaisedButton(
                    onPressed: (){
                      var route = new MaterialPageRoute(
                        builder: (BuildContext)=>
                        new LingkaranPage(input_ruas: ruas),
                      );
                      Navigator.of(context).push(route);
                    },
                    padding: EdgeInsets.all(10.0),
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text("Hitung Luas",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),
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
class LingkaranPage extends StatelessWidget {

  LingkaranPage({@required this.input_ruas});
  final double input_ruas;

  int thasil;
  String cHasil;
  int hasil;

  @override
  Widget build(BuildContext context) {
    double hasil = (input_ruas * input_ruas * 3.14);
    double hasil_keliling = (input_ruas * 2 * 3.14);
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
            Text("Ruas : $input_ruas m",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black54,
                fontFamily: "Acme",
              ),
            ),
            SizedBox(height: 5),
            Text("Jadi Luasnya adalah : ",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Colors.black54,
                  fontFamily: "Acme"
              ),
            ),

            EasyRichText('$hasil m2',
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
            Text("Jadi Keliling adalah : ",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Colors.black54,
                  fontFamily: "Acme"
              ),
            ),
            EasyRichText('$hasil_keliling m',
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