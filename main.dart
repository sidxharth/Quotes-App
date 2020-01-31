import './quote.dart';
import 'package:flutter/material.dart';
import './quotecard.dart';
import './quotelist.dart';
import "dart:math";

void main() => runApp(QuotesApp());

class QuotesApp extends StatefulWidget {
  @override
  _QuotesAppState createState() => _QuotesAppState();
}

class _QuotesAppState extends State<QuotesApp> {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  Scaffold(
        floatingActionButton: FloatingActionButton(
          splashColor: Colors.red[600],
          onPressed: () {},
          backgroundColor: Colors.red[500],
          child: Icon(Icons.autorenew),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        appBar: AppBar(
          title: Text('RANDOM QUOTES'),
          centerTitle: true,
          backgroundColor: Colors.red[500],
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(15, 15, 15, 87),
          child: Column(
            children: quotes.map((quote) {
                return QuoteCard(quote: quote);
              }).toList(),
          ),
        ),
      ),
    );
  }
}