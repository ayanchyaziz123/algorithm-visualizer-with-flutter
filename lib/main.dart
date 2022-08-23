import 'package:algo_visualizer/screens/home_screen.dart';
import 'package:algo_visualizer/screens/searching_screen.dart';
import 'package:algo_visualizer/screens/sorting_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "flutter demo",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const HomeScreen(),
        '/sort': (context) => const SortingScreen(),
        '/search': (context) => const SearchingScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
      },
    );
  }
}
