import 'package:cuaca002/model/cuaca_model.dart';
import 'package:dio/dio.dart';

class CuacaRequest {
  Future<CuacaModel> getCurrentWeather() async {
    var response = await Dio().get(
        "https://api.openweathermap.org/data/2.5/weather?q=jakarta&appid=b5bedb63d4f648d38784f1b284518479&units=metric");
    return CuacaModel.fromJson(response.data);
  }
}
