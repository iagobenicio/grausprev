import 'package:flutter/material.dart';
import 'package:grausprev/result.dart';
import 'components/Texts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _citycontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: LayoutBuilder(
          builder: (BuildContext build, BoxConstraints boxConstraints) {
        if (boxConstraints.maxWidth > 500) {
          return GestureDetector(
              onTap: () => FocusScope.of(context).requestFocus(new FocusNode()),
              child: Container(
                width: MediaQuery.of(context).size.width,
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
                padding: EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextComponent("GrausPrev", textsize: 24.0),
                    Text(
                      "Veja a previsão do tempo hoje e dos próximos dias",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      width: 300,
                      child: TextField(
                        controller: _citycontroller,
                        style: TextStyle(color: Color.fromRGBO(66, 88, 106, 1)),
                        cursorColor: Color.fromRGBO(66, 88, 106, 1),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color.fromRGBO(253, 253, 253, 0.75),
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(66, 88, 106, 1)))),
                      ),
                    ),
                    SizedBox(
                      width: 150,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      Result(_citycontroller.text)));
                        },
                        child: TextComponent("pesquisar"),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromRGBO(66, 88, 106, 1)),
                        ),
                      ),
                    ),
                  ],
                ),
              ));
        } else {
          return GestureDetector(
              onTap: () => FocusScope.of(context).requestFocus(new FocusNode()),
              child: Container(
                width: MediaQuery.of(context).size.width,
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
                padding: EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextComponent("GrausPrev", textsize: 24.0),
                    Text(
                      "Veja a previsão do tempo hoje e dos próximos dias",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.80,
                      child: TextField(
                        controller: _citycontroller,
                        style: TextStyle(color: Color.fromRGBO(66, 88, 106, 1)),
                        cursorColor: Color.fromRGBO(66, 88, 106, 1),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color.fromRGBO(253, 253, 253, 0.75),
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(66, 88, 106, 1)))),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    Result(_citycontroller.text)));
                      },
                      child: TextComponent("pesquisar"),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromRGBO(66, 88, 106, 1)),
                      ),
                    )
                  ],
                ),
              ));
        }
      }),
    );
  }
}
