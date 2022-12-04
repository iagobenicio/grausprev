import 'package:dio/dio.dart';
import '../models/DataPrevision.dart';

class Prevision {

  Future<Weatherobjects> getPrevisao(String? city) async {

    try{
      var objprev = await Dio()
          .get("https://api.hgbrasil.com/weather?key=f8de0098&city_name=$city");
      
        var object = Weatherobjects(
            objprev.data["results"]["temp"],
            objprev.data["results"]["city"],
            objprev.data["results"]["description"],
            objprev.data["results"]["humidity"],
            objprev.data["results"]["wind_speedy"],
            objprev.data["results"]["forecast"]);

        return object;
        
    } on DioError catch(e){
      throw Exception(e.message);
    } 
    catch (e) {
      throw Exception("Algum erro ocorreu");
    }
  
  
  }


}
