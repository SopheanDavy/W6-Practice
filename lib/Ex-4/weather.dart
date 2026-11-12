import 'package:flutter/material.dart';

enum WeatherType {
  sunny(
    cityName: 'PhnomPenh',
    minTemp: '10.0°C',
    maxTemp: '30.0°C',
    currentTemp: '12.2°C',
    icon: Icons.wb_sunny,
    gradientColors: [Color(0xFF9C27B0), Color(0xFF673AB7)], // Purple gradient
  ),
  paris(
    cityName: 'Paris',
    minTemp: '10.0°C',
    maxTemp: '40.0°C',
    currentTemp: '22.2°C',
    icon: Icons.cloud,
    gradientColors: [Color(0xFF00B4DB), Color(0xFF0083B0)], // Teal/Green gradient
  ),
  rome(
    cityName: 'Rome',
    minTemp: '10.0°C',
    maxTemp: '40.0°C',
    currentTemp: '45.2°C',
    icon: Icons.wb_sunny_outlined,
    gradientColors: [Color(0xFFFF416C), Color(0xFFFF4B2B)], // Red/Pink gradient
  ),
  toulouse(
    cityName: 'Toulouse',
    minTemp: '10.0°C',
    maxTemp: '40.0°C',
    currentTemp: '45.2°C',
    icon: Icons.cloud_outlined,
    gradientColors: [Color(0xFFF7971E), Color(0xFFFFD200)], // Orange/Yellow gradient
  );

  final String cityName;
  final String minTemp;
  final String maxTemp;
  final String currentTemp;
  final IconData icon;
  final List<Color> gradientColors;

  const WeatherType({
    required this.cityName,
    required this.minTemp,
    required this.maxTemp,
    required this.currentTemp,
    required this.icon,
    required this.gradientColors,
  });
}