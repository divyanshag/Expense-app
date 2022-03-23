import 'package:flutter/material.dart';
import 'user_transactions.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function addTx;

  NewTransaction(this.addTx);
  void submitData(){
    addTx(titleController.text,
                        double.parse(amountController.text));
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(labelText: 'title'),
                  // onChanged: (val) {
                  //   titleInput = val;
                  // },
                  controller: titleController,
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'amount'),
                  //onChanged: (val) => amountInput = val,
                  controller: amountController,
                  keyboardType: TextInputType.number,
                  onSubmitted: ,
                ),
                FlatButton(
                  child: Text('Add trans'),
                  textColor: Colors.purple,
                  onPressed: () {
                    // print(titleInput);
                    // print(amountInput);
                    
                  },
                )
              ])),
    );
  }
}
