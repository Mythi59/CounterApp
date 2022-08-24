import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 25);
    int counter = 10;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Screen'),
          elevation: 5,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Counter Clicks',
                style: fontSize30,
              ),
              Text(
                '$counter',
                style: fontSize30,
              ),
            ],
          ),
        ),
        //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: (() => {counter++, print('Hola Mundo: $counter')})));
  }
}
