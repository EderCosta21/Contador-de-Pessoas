import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: "contador de Pessoas", home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _people = 0;

  String _infTexto = "Pode Entrar ";

  void _changePeople(int value) {
    setState(() {
      _people += value;

      if(_people <0 ) {
        _infTexto = "Erro no contador";
      }else if ( _people < 10 )
      {
        _infTexto = "Pode Entrar ";
      }
      else {
        _infTexto = "Lotado! ";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "images/restaurant.jpg",
          fit: BoxFit.cover,
          height: 10000.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Pessoas $_people",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: TextButton(
                    child: Text(
                      "+1",
                      style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    onPressed: () {
                      _changePeople(1);

                      debugPrint("+1");
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: TextButton(
                    child: Text(
                      "-1",
                      style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    onPressed: () {
                      _changePeople(-1);
                      debugPrint("-1");
                    },
                  ),
                )
              ],
            ),
            Text(
              "$_infTexto",
              style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 20.0),
            ),
          ],
        )
      ],
    );
  }
}
