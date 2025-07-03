class WeatherModel {
  final String cityname;
  final String date;
  final String? image;
  final double temp;
  final double mixtem;
  final double mintemp;
  final String weatherstate;
  WeatherModel({
    required this.cityname,
    required this.date,
    this.image,
    required this.temp,
    required this.mixtem,
    required this.mintemp,
    required this.weatherstate,
  });
  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      image: json['current']['condition']['icon'],
      cityname: json['location']['name'],
      date: json['current']['last_updated'],
      temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      mixtem: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      mintemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      weatherstate: json['current']['condition']['text'],
    );
  }
}
