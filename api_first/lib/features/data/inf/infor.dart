import 'package:api_first/features/data/model/model.dart';
import 'package:api_first/features/presentetions/constans/link.dart';
import 'package:dio/dio.dart';

class Information {
  Dio dio = Dio();
  Future<Models?> fetchData() async {
    Response response = await dio.get(Link.link);
    if (response.statusCode == 200) {
      final models = Models(
        base: response.data['base'],
        humidity: response.data['main']['humidity'],
        country: response.data['sys']['country'],
        all: response.data['clouds']['all'],
      );
      return models;
    }return null;
  }
}
