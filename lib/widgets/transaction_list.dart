import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';


class TransactionList extends StatelessWidget {
  final List<Transaction>transactions;
  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context){
    return Column(
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
    );
  }
}
