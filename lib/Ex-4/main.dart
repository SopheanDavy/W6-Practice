import 'package:flutter/material.dart';
import 'weather.dart';
import 'weather_card.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Weather Forecast'),
          backgroundColor: Colors.blue,
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Icon(Icons.menu),
            ),
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          children: const [
            WeatherCard(weather: WeatherType.phnomPenh),
            WeatherCard(weather: WeatherType.paris),
            WeatherCard(weather: WeatherType.rome),
            WeatherCard(weather: WeatherType.toulouse),
          ],
        ),
      ),
    );
  }
}