import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(30.0),
          child: AppBar(
            backgroundColor: Colors.blue,
            title: const Text(
              '10.82, 206.24',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
            centerTitle: true, 
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onPressed: () {
                  // Hành động khi nhấn nút menu
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.blue,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(top: 32, bottom: 14),
                    child: const Text(
                      'Ho Chi Minh City',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 14),
                    width: 148,
                    height: 148,
                    color: Colors.green,
                    alignment: Alignment.center,
                    child: const Text(
                      'đây là mặt trời',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                  const Text(
                    'Soft light',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                  const Text(
                    '32°C',
                    style: TextStyle(
                        fontSize: 64,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const Text(
                    'Duststorm, sandstorm, drifting or blowing snow',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  _buildWeatherDetails(),
                  const SizedBox(height: 20),
                  _buildForecastDetails(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildWeatherDetails() {
    return Container(
      width: 370,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Wrap(
        spacing: 20.0,
        runSpacing: 10.0,
        alignment: WrapAlignment.spaceBetween,
        children: const <Widget>[
          Text(
            'Humidity  40%',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          Text(
            'Wind 2km/h',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          Text(
            'PM10 33.4µg/m³',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          Text(
            'UV 2.21',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          Text(
            'Sunrise 6:35',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          Text(
            'Sunset 17:55',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget _buildForecastDetails() {
    return Container(
      width: 370,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(left: 6, right: 16),
                width: 24,
                height: 24,
                color: const Color.fromARGB(255, 204, 201, 201),
              ),
              const Text(
                'FORECAST',
                style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 204, 201, 201),
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 8 ,bottom: 8),
            color: Color.fromARGB(255, 204, 201, 201),
            width: 345,
            height: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const <Widget>[
              Text(
                'Max: 37.4℃',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                'Min: 22.1℃',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const SizedBox(height: 8),
          _buildForecastTime(),
        ],
      ),
    );
  }

  Widget _buildForecastTime() {
    return Column(
      children: [
        Wrap(
          spacing: 20,
          children: const <Widget>[
            Text(
              '0 AM',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              '1 AM',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              '2 AM',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              '3 AM',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 60,
          children: <Widget>[
            Container(
              width: 20,
              height: 20,
              color: Colors.white,
            ),
            Container(
              width: 20,
              height: 20,
              color: Colors.white,
            ),
            Container(
              width: 20,
              height: 20,
              color: Colors.white,
            ),
            Container(
              width: 20,
              height: 20,
              color: Colors.white,
            ),
          ],
        ),
      ],
    );
  }
}
