import 'package:flutter/material.dart';
import 'services/previsaoAPI.dart';
import 'screens/Screen1.dart';
import 'screens/Screen2.dart';

class Result extends StatefulWidget {
  String _namecityapi;
  Result(String objt) {
    this._namecityapi = objt;
  }

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  var citys = new Prevision();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(0, 143, 188, 1),
          elevation: 10,
          shadowColor: Colors.black,
          title: Title(color: Colors.white, child: Text("Previsão")),
        ),
        body: FutureBuilder(
            future: citys.getPrevisao(widget._namecityapi),
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.waiting:
                  return Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromRGBO(0, 143, 188, 1),
                          Color.fromRGBO(0, 103, 135, 1),
                          Color.fromRGBO(0, 82, 107, 1)
                        ],
                      )),
                      child: Center(
                        child: CircularProgressIndicator(
                          backgroundColor: Color.fromRGBO(0, 82, 107, 1),
                        ),
                      ));
                  break;
                case ConnectionState.done:
                  return LayoutBuilder(
                      builder: (BuildContext buildcontext, BoxConstraints box) {
                    if (box.maxWidth < 260) {
                      return FirstScreen(snapshot.data);
                    } else {
                      return SecondScreen(snapshot.data);
                    }
                  });
                case ConnectionState.none:
                  return Container(
                    color: Color.fromRGBO(15, 42, 74, 1),
                    child: Center(
                      child: Text("Nenhuma conexão"),
                    ),
                  );
                default:
                  return Container(
                    child: Center(
                      child: Text("Erro"),
                    ),
                  );
              }
            }));
  }
}
