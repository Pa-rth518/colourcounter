import 'dart:math';

import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   int _counter = 0;
  Color _backgroundColor = Colors.white;

  // Function to get a random color
  Color getRandomColor() {
    Random random = Random();
    return Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
      _backgroundColor = getRandomColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(
        title: Center(child: Text('Colorful Counter', style: TextStyle(fontFamily: 'ProtestGuerrilla',fontSize: 50,),)),
        backgroundColor: const Color.fromARGB(255, 192, 162, 245),
       
      ),
      body: Center(
        child: Text(
          'Counter: $_counter',
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        backgroundColor: const Color.fromARGB(255, 76, 217, 123),
        child: const Icon(Icons.add),
      ),
    );
    
  }
}