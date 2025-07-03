import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/model/weather_model.dart';
import 'package:weather_app/services/servies_weather.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text(
          'البحث عن مدينتك',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 350, right: 15, left: 15),
        child: TextField(
          onSubmitted: (value) async {
            WeatherModel weatherModel = await WeatherServies(
              Dio(),
            ).getcurrentWeather(cityName: value);
            log(weatherModel.cityname);
          },

          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
            labelText: 'اسم المدينة',
            suffixIcon: Icon(Icons.search),
            hintText: 'ابحث عن طقسك',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          ),
        ),
      ),
    );
  }
}
