import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

  void submitData() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

    if (enteredTitle.isEmpty || enteredAmount <= 0){
      return;
    }

    addTx(
       enteredTitle,
      enteredAmount,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
                decoration: InputDecoration(labelText: 'Title'),
                controller: titleController,
                keyboardType: TextInputType.text,
                 onSubmitted: (_) => submitData(),
                // onChanged: (val){titleInput = val;}

                ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              onSubmitted: (_) => submitData(),
              //onChanged: (val){amountInput = val;},
            ),
            //FlatButton is now Textbutton, check docs for more styling options and how to work with it.
            TextButton(
              child: Text('Add Transaction'),
              style: TextButton.styleFrom(primary: Colors.deepPurpleAccent),
              onPressed: submitData,
            ),
          ],
        ),
      ),
    );
  }
}
