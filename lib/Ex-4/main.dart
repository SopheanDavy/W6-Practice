import 'package:flutter/material.dart';
import 'weather.dart';
import 'weather_card.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeatherScreen(),
    ),
  );
}

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather Forecast'),
        backgroundColor: Colors.blue.shade300,
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        children: const [
          WeatherCard(weather: WeatherType.sunny),
          WeatherCard(weather: WeatherType.paris),
          WeatherCard(weather: WeatherType.rome),
          WeatherCard(weather: WeatherType.toulouse),
        ],
      ),
    );
  }
}