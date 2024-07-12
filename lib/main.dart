import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) {
          return const SizedBox.square(
            dimension: 100,
            child: RiveAnimation.asset(
              'assets/rive/square.riv',
              animations: [
                'abc', // non-existent to force no animation playback
              ],
            ),
          );
        },
      ),
    );
  }
}
