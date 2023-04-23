import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '/transaction.dart';

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
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'New Bag',
      amount: 78.98,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'New Shirt',
      amount: 58.75,
      date: DateTime.now(),
    ),
  ];

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
          Card(child: Column(children: <Widget>[
            TextField(),
            TextField(),
          ],),),
          Column(
            children: transactions.map((tx) {
              return Card(
                //row to hold my widget decoration and values
                child: Row(children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 15,
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black54,
                          width: 2,
                        )),
                    padding: EdgeInsets.all(15),
                    child: Text(
                      //string interpolation with the use of $ and \ to add a total sign to your amount
                      '\$${tx.amount}',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.deepPurpleAccent),
                    ),
                  ),
                  //this column contains the values for title and the above is for amount
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        tx.title,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        //an intl package was installed and the DateFormat string was use and tx.date was called
                        DateFormat.yMMMMd().format(tx.date),
                        style: TextStyle(
                            fontWeight: FontWeight.normal, color: Colors.grey),
                      ),
                    ],
                  ),
                ]),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
