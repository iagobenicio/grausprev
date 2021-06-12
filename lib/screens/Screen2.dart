import 'package:flutter/material.dart';
import '../components/Texts.dart';
import '../components/ColumnComponent.dart';
import '../components/ContainerComponent.dart';
import '../models/DataPrevision.dart';

class SecondScreen extends StatelessWidget {
  Weatherobjects _weather;
  SecondScreen(this._weather);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
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
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 180,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextComponent(
                      _weather.getTemp().toString() + "°C",
                      textsize: 45.0,
                    ),
                    TextComponent(
                      _weather.getCity(),
                      textsize: 34.0,
                    ),
                    TextComponent(
                      _weather.getDescription(),
                      textsize: 24.0,
                    ),
                  ],
                ),
              ),
              Container(
                height: 120,
                padding: EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ColumnCP([
                      Image.asset("imagens/humidity.png"),
                      TextComponent(_weather.getHumidity().toString() + "%"),
                    ]),
                    ColumnCP([
                      Image.asset("imagens/wind.png"),
                      TextComponent(_weather.getWindspeed()),
                    ]),
                    ColumnCP([
                      Image.asset("imagens/max.png"),
                      TextComponent(
                          _weather.getNextdays()[0]["max"].toString() + "°"),
                    ]),
                    ColumnCP([
                      Image.asset("imagens/min.png"),
                      TextComponent(
                          _weather.getNextdays()[0]["min"].toString() + "°"),
                    ]),
                  ],
                ),
              ),
              Container(
                  height: 300,
                  margin: EdgeInsets.only(top: 30),
                  width: MediaQuery.of(context).size.width * 0.90,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (var i = 0; i < _weather.getNextdays().length; i++)
                          ContainerCP(
                            [
                              TextComponent(
                                  _weather.getNextdays()[i]["weekday"]),
                              TextComponent("Max." +
                                  _weather.getNextdays()[i]["max"].toString() +
                                  "°"),
                              TextComponent("Min." +
                                  _weather.getNextdays()[i]["min"].toString() +
                                  "°")
                            ],
                            width: 110,
                            height: 140,
                          ),
                      ],
                    ),
                  ))
            ],
          ),
        ));
  }
}
