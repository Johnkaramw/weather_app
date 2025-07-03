import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/model/weather_model.dart';

class WeatherServies {
  final Dio dio;
  final baseUrl = 'https://api.weatherapi.com/v1';
  final String apiKey = 'c1a26b96b6484f72992111458251606';
  WeatherServies(this.dio);
  Future<WeatherModel> getcurrentWeather({required String cityName}) async {
    try {
      final Response response = await Dio().get(
        '$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=14',
      );
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errorMessage =
          e.response?.data['error']['message'] ??
          'oops there are an error , try later';
      throw Exception(errorMessage);
    } catch (e) {
      log(e.toString());
      throw Exception('oops there are error , try later');
    }
  }
}
