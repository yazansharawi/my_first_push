import 'package:flutter/material.dart';
import 'Quotes.dart';
import 'quotecard.dart';

void main () => runApp(MaterialApp(
  home: Quoteslist()
));

class Quoteslist extends StatefulWidget {
  @override
  _QuoteslistState createState() => _QuoteslistState();
}

class _QuoteslistState extends State<Quoteslist> {
  List<Quote> qoutes = [
    Quote(text:'be yourself; everyone else is already taken',author: 'oscar wild'),
    Quote(text:'I have nothing to declare except my genius',author: 'simon beer'),




  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Awesome Quotes"),
        centerTitle: true,
      ),
      body: Column(
        children: qoutes.map((Qoutes) => quotecard(
            Quotes: Qoutes,
          delete: (){
              setState(() {
                qoutes.remove(Qoutes);
              });

          }

        )).toList(),
      ),

    );
  }
}

