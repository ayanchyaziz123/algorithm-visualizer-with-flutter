import 'dart:math';

import 'package:flutter/material.dart';

class SearchingScreen extends StatefulWidget {
  const SearchingScreen({Key? key}) : super(key: key);

  @override
  State<SearchingScreen> createState() => _SearchingScreenState();
}

class _SearchingScreenState extends State<SearchingScreen> {
  double _value = 6;
  List<int> _numbers = [];
  List<int> _color = [];
  List<int> _arr = [];
  int _sampleSize = 60;
  int _target = -1;
  _randomize(){
    _numbers.clear();
    for(int i = 0; i < _sampleSize; i++)
      {
        _numbers.add(Random().nextInt(_sampleSize));
      }
    setState(() {
    });
  }
  _handleStart()
  {
    print(_target);
  }
  _sort(){

  }

  @override
  void initState(){
    _randomize();
  }

  String _algorithm = "Binary search";

  _setAlgorithm(algo)
  {
    setState(() {
      _algorithm = algo;
    });
  }



  _handleBottombar(int index)
  {
    print(index);
  }



  @override
  Widget build(BuildContext context) {

    Widget getTextWidgets()
    {
      return new Wrap(children: _numbers.map((item) => SizedBox(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: new Text(item.toString() + '  ', style: TextStyle(
            color: Colors.white,
            backgroundColor: Colors.black,
          ),),
        ),
      )).toList());
    }


    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: Text(
            _algorithm
        ),

      ),
      endDrawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Sorting algorithm'),
            ),
            ListTile(
              title: const Text('linear search'),
              onTap: () {
                _setAlgorithm("linear search");
                // ...
              },
            ),
            ListTile(
              title: const Text('binary search'),
              onTap: () {
                // Update the state of the app.
                _setAlgorithm("binary search");
                // ...
              },
            ),
          ],
        ),
      ),
      body: Wrap(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 100.0,
                child: TextField(
                  onChanged: (text) {
                    setState(() {
                      _sampleSize = int.parse(text);
                    });

                    _randomize();
                  },
                  style: TextStyle(fontSize: 30.0, height: 1.0, color: Colors.black),
                  decoration: InputDecoration(
                    label: Text('size'),
                  ),
                ),
              ),
              SizedBox(
                width: 100.0,
                child: TextField(
                  onChanged: (text) {
                    print(text);
                    setState(() {
                      _target = int.parse(text);
                    });
                  },
                  style: TextStyle(fontSize: 30.0, height: 1.0, color: Colors.black),
                  decoration: InputDecoration(
                    label: Text('target'),
                  ),

                ),
              ),
            ],
          ),
          getTextWidgets(),


        ],
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
        onTap: _handleBottombar,
      ),
    );
  }
}