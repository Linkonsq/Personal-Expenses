import 'package:flutter/material.dart';
import 'package:personalexpenses/transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 1990,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'New Shirt',
      amount: 990,
      date: DateTime.now(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.lightBlueAccent,
              child: Text('CHART!'),
            ),
          ),
          Card(
            color: Colors.red,
            child: Text('LIST OF TX'),
          ),
        ],
      ),
    );
  }
}
