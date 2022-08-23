import 'package:flutter/material.dart';

class SortingScreen extends StatelessWidget {
  const SortingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Sorting page"
        ),
      ),
      body: Center(
        child: Text(
          "this is sorting screen"
        ),
      ),

    );
  }
}