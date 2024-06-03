import 'package:dio/dio.dart';
import 'package:practice_with_api_second/features/domian/entity/entity.dart';

class Infor {
  Dio dio = Dio();
  Future<Entity?>fetchData() async {
    final response = await dio.get(
        'http://api.openweathermap.org/data/2.5/weather?q=bishkek,&appid=9ca1643f2fe63535c13cf0838c32ff8d',);
        if(response.statusCode == 200) { 
             final model = Entity(
      timezone: response.data['timezone'],
      name: response.data['name'],
      speed: response.data['wind']['speed'],
      country: response.data['sys']['country'],

    );return model;
  }  return null;
}
}