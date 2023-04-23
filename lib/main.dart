import 'package:flutter/material.dart';
import './widgets/new_transaction.dart';
import './widgets/transaction_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

 // String titleInput;
//  String amountInput;
  final titleController = TextEditingController();
  final amountController = TextEditingController();
//Texteditingcontroller is essential for a stateless widget to help listen on the app changes, read more on the docs

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.tealAccent,
              child: Text('CHART'),
              elevation: 5,
            ),
          ),
      //Textfield is an input field, inorder to create an input field, you would have to do it under the container of the AppBar.


        ],
      ),
    );
  }
}
