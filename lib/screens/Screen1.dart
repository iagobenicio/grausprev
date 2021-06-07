import 'package:flutter/material.dart';
import '../objetos/DataPrevision.dart';
import '../components/Texts.dart';
import '../components/ColumnComponent.dart';
import '../components/ContainerComponent.dart';

class FirstScreen extends StatelessWidget {
  Weatherobjects weather;
  FirstScreen(this.weather);
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
                    textsize: 34.0,
                  ),
                  TextComponent(
                    this.weather.city,
                    textsize: 23.0,
                  ),
                  TextComponent(
                    this.weather.description,
                    textsize: 13.0,
                  ),
                ],
              ),
            ),
            Container(
              height: 247,
              padding: EdgeInsets.only(top: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ColumnCP([
                    Image.asset("imagens/humidity.png", scale: 1.3),
                    TextComponent(
                      this.weather.humidity.toString() + "%",
                      textsize: 13.0,
                    ),
                  ]),
                  ColumnCP([
                    Image.asset("imagens/wind.png", scale: 1.3),
                    TextComponent(
                      this.weather.windSpeed,
                      textsize: 13.0,
                    ),
                  ]),
                  ColumnCP([
                    Image.asset("imagens/max.png", scale: 1.3),
                    TextComponent(
                      this.weather.nextdays[0]["max"].toString() + "°",
                      textsize: 13.0,
                    ),
                  ]),
                  ColumnCP([
                    Image.asset("imagens/min.png", scale: 1.3),
                    TextComponent(
                      this.weather.nextdays[0]["min"].toString() + "°",
                      textsize: 13.0,
                    ),
                  ]),
                ],
              ),
            ),
            Container(
                height: 300,
                width: MediaQuery.of(context).size.width * 0.90,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ContainerCP(
                        [
                          TextComponent(
                            "04/06/2021",
                            textsize: 13.0,
                          ),
                          TextComponent(
                            "Max. 31°",
                            textsize: 13.0,
                          ),
                          TextComponent(
                            "Min. 29°",
                            textsize: 13.0,
                          )
                        ],
                        width: 90,
                        height: 120,
                      )
                    ],
                  ),
                )),
          ],
        )));
  }
}
