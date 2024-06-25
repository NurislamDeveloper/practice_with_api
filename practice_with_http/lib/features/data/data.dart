import 'package:http/http.dart' as http;
import 'package:practice_with_http/features/data/model.dart';

class Information {
  Future<Models?> fethcData() async {
    final response = await http.get(
      Uri.parse(
          'https://api.openweathermap.org/data/2.5/weather?q=bishkek,&appid=9ca1643f2fe63535c13cf0838c32ff8d'),
    );
    if(response.statusCode == 200) {
     final model = Models(description: response.body['weather'] [0] ['description'], base: base, sunrise: sunrise, sunset: sunset)
    } 

  }
}
