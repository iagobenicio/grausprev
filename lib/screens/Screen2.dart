import 'package:flutter/material.dart';
import '../components/Texts.dart';
import '../components/ColumnComponent.dart';
import '../components/ContainerComponent.dart';
import '../objetos/DataPrevision.dart';

class SecondScreen extends StatelessWidget {
  Weatherobjects weather;
  SecondScreen(this.weather);
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
                      this.weather.temp.toString() + "°C",
                      textsize: 45.0,
                    ),
                    TextComponent(
                      this.weather.city,
                      textsize: 34.0,
                    ),
                    TextComponent(
                      this.weather.description,
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
                      TextComponent(this.weather.humidity.toString() + "%"),
                    ]),
                    ColumnCP([
                      Image.asset("imagens/wind.png"),
                      TextComponent(this.weather.windSpeed),
                    ]),
                    ColumnCP([
                      Image.asset("imagens/max.png"),
                      TextComponent(
                          this.weather.nextdays[0]["max"].toString() + "°"),
                    ]),
                    ColumnCP([
                      Image.asset("imagens/min.png"),
                      TextComponent(
                          this.weather.nextdays[0]["min"].toString() + "°"),
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
                        for (var i = 0; i < this.weather.nextdays.length; i++)
                          ContainerCP(
                            [
                              TextComponent(
                                  this.weather.nextdays[i]["weekday"]),
                              TextComponent("Max." +
                                  this.weather.nextdays[i]["max"].toString() +
                                  "°"),
                              TextComponent("Min." +
                                  this.weather.nextdays[i]["min"].toString() +
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
