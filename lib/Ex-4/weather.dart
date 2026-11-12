import 'package:flutter/material.dart';

enum WeatherType {
  phnomPenh(
    cityName: 'PhnomPenh',
    minTemp: '10.0°C',
    maxTemp: '30.0°C',
    currentTemp: '12.2°C',
    imagePath: 'assets/ex4/cloudy.png',
    gradientColors: [Color(0xFF9C27B0), Color(0xFF673AB7)],
  ),
  paris(
    cityName: 'Paris',
    minTemp: '10.0°C',
    maxTemp: '40.0°C',
    currentTemp: '22.2°C',
    imagePath: 'assets/ex4/sunnyCloudy.png',
    gradientColors: [Color(0xFF00BCD4), Color(0xFF03A9F4)],
  ),
  rome(
    cityName: 'Rome',
    minTemp: '10.0°C',
    maxTemp: '40.0°C',
    currentTemp: '45.2°C',
    imagePath: 'assets/ex4/sunny.png',
    gradientColors: [Color.fromARGB(255, 255, 34, 100), Color.fromARGB(255, 255, 0, 34)],
  ),
  toulouse(
    cityName: 'Toulouse',
    minTemp: '10.0°C',
    maxTemp: '40.0°C',
    currentTemp: '45.2°C',
    imagePath: 'assets/ex4/veryCloudy.png',
    gradientColors: [Color(0xFFFFC107), Color(0xFFFF9800)],
  );

  final String cityName;
  final String minTemp;
  final String maxTemp;
  final String currentTemp;
  final String imagePath;
  final List<Color> gradientColors;

  const WeatherType({
    required this.cityName,
    required this.minTemp,
    required this.maxTemp,
    required this.currentTemp,
    required this.imagePath,
    required this.gradientColors,
  });
}