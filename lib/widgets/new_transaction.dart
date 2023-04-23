import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration:
              InputDecoration(labelText: 'Title'),
              controller: titleController,
              // onChanged: (val){titleInput = val;}

            ),
            TextField(
              decoration: InputDecoration
                (labelText: 'Amount'),
              controller: amountController,
              //onChanged: (val){amountInput = val;},
            ),
            //FlatButton is now Textbutton, check docs for more styling options and how to work with it.
            TextButton(child: Text('Add Transaction'),
              style: TextButton.styleFrom(primary: Colors.deepPurpleAccent),
              onPressed:(){
                print(titleController.text);
              }, ),
          ],),
      ),
    );
  }
}
