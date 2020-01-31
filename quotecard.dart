import 'package:flutter/material.dart';
import './quote.dart';


class QuoteCard extends StatelessWidget {

  final Quote quote;
  QuoteCard(this.quote);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: EdgeInsets.all(15.0),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.red[400],
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
          FlatButton.icon(
              onPressed: () {},
              splashColor: Colors.red,
              label: Text('LIKE'),
              icon: Icon(
                Icons.favorite,
              )
            ),
          ],
          
        ),
      ),
    );
  }
}