import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Algo visulizer"
        ),
      ),
      body: Container(
        child: GridView(
          children: [
            Card(
              color: Colors.white,
              child: TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.blue,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/sort');
                },
                child: Text('sort'),
              ),
            ),
            Card(
              color: Colors.white,
              child: TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.blue,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/search');
                },
                child: Text('search'),
              ),
            ),
            Card(color: Colors.red,),
            Card(color: Colors.yellow,),
            Card(color: Colors.green,),

          ],
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
        ),
      ),
    );
  }
}
