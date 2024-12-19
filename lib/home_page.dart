// ignore: file_names
import 'dart:async';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int timeLeft = 5;
  void _startCountDown() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (timeLeft > 0) {
        setState(
          () {
            timeLeft--;
          },
        );
      } else {
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              timeLeft == 0 ? "Done" : timeLeft.toString(),
              style: const TextStyle(fontSize: 70),
            ),
            MaterialButton(
              onPressed: _startCountDown,
              child: const Text(
                "S T A R T",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.deepPurple,
            )
          ],
        ),
      ),
    );
  }
}
