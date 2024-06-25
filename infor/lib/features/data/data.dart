// import 'package:http/http.dart';
import 'package:dio/dio.dart';

import 'package:infor/features/data/model.dart';

class Information {
  Dio dio = Dio();
  Future<Model?> fetchData() async {
    final response = await dio.get(
      'https://api.openweathermap.org/data/2.5/weather?q=bishkek,&appid=9ca1643f2fe63535c13cf0838c32ff8d',
    );
    if (response.statusCode == 200) {
      final model = Model(
        main: response.data['weather'][0]['main'],
        id: response.data['weather'][0]['id'],
        description: response.data['weather'][0]['description'],
      );
      return model;
    }return null;
  }
}
