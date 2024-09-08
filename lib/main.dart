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
          preferredSize: Size.fromHeight(56.0),
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
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onPressed: () {
                  // Hành động khi nhấn nút menu
                },
              )
            ],
          ),
        ),
        body: const Center(
          child: Text('Content goes here'),
        ),
      ),
    );
  }
}
