import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _numeroGerada = "";

  void _gerarNumero() {
    var numeroSorteado = Random().nextInt(20).toString();
    setState(() {
      _numeroGerada = numeroSorteado;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JOGAR D20"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    height: 290,
                    width: 265,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/d20.png"),
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
                      ),
                    ),
                    child: Center(
                      child: new Text(
                        _numeroGerada,
                        style: TextStyle(
                          fontSize: 55,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Text(
            "Está com sorte?",
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          RaisedButton(
            child: Text(
              "PRESSIONE",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            color: Colors.blue,
            onPressed: _gerarNumero,
          ),
        ],
      ),
    );
  }
}
