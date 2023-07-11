import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(text:'Knowing yourself is the beginning of all wisdom.' , author:'Aristoteles' ),
    Quote(text: 'Knowing others is intelligence; knowing yourself is true wisdom. Mastering others is strength; mastering yourself is true power.', author: 'Lao Tzu'),
    Quote(text: "There are three things extremely hard: steel, a diamond, and to know one's self.", author: 'Benjamin Franklin'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => Text('${quote.text} - ${quote.author}')).toList(), // a list of Text widgets
      ),
    );
  }
}

//Another file use:
//import 'quote.dart';
class Quote {
  String text = "";
  String author= "";
  Quote({required this.text, required this.author});
}

