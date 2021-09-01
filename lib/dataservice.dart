import 'package:http/http.dart' as http;

class DataService{
  void getWeather(String city) async{
    //api.openweathermap.org/data/2.5/weather?q={city name}&appid={API key}

    final queryParameters = {'q': city, 'appid': '95c1115e1aac9f1e82c55d82862f2de2'};
    
    final uri = Uri.http('api.openweathermap.org', '/data/2.5/weather', queryParameters);

    final response = await http.get(uri);

    print(response.body);
  }
}