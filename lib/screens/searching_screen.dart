import 'package:flutter/material.dart';

class SearchingScreen extends StatefulWidget {
  const SearchingScreen({Key? key}) : super(key: key);

  @override
  State<SearchingScreen> createState() => _SearchingScreenState();
}

class _SearchingScreenState extends State<SearchingScreen> {
  double _value = 6;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Searching page"
        ),
      ),
      body: Center(
        child: Slider(
          min: 0,
          max: 100,
          value: _value,
          onChanged: (value) {
            setState(() {
              _value = value;
            });
          },
        ),

      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.clean_hands),
            label: 'reload',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_arrow),
            label: 'play',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
        ],
      ),
    );
  }
}