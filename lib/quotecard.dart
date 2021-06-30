import 'package:flutter/material.dart';
import 'Quotes.dart';
class quotecard extends StatelessWidget {
  final Quote Quotes;
  final Function delete;
  quotecard({this.Quotes,this.delete});




  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              Quotes.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],

              ),

            ),
            SizedBox(height: 6.0),
            Text(
              Quotes.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 8.0,),
            FlatButton.icon(
              onPressed: delete,
              label: Text('Delete'),
              icon: Icon(Icons.delete),
            ),
          ],
        ),
      ),


    );
  }
}

