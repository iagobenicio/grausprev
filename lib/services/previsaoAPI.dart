import 'package:dio/dio.dart';
import '../objetos/DataPrevision.dart';

class Prevision {
  Future<Weatherobjects> getPrevisao(String city) async {
    var objprev = await Dio()
        .get("https://api.hgbrasil.com/weather?key=&city_name=$city");

    var object = Weatherobjects(
        objprev.data["results"]["temp"],
        objprev.data["results"]["city"],
        objprev.data["results"]["description"],
        objprev.data["results"]["humidity"],
        objprev.data["results"]["wind_speedy"],
        objprev.data["results"]["forecast"]);

    return object;
  }
}
