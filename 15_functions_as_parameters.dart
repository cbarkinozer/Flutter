import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
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
        title: const Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
            quote: quote,
          delete: (){
              setState(() {
                quotes.remove(quote);
              });
          }
        )).toList(), // a list of Text widgets
      ),
    );
  }
}

//Another file
class Quote {
  String text = "";
  String author= "";
  Quote({required this.text, required this.author});
}

class QuoteCard extends StatelessWidget {

  final Quote quote; //We can only use final variables inside a stateless widget
  final Function() delete;
  const QuoteCard({super.key, required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 6.0),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800],
              ),
            ),
            const SizedBox(height: 8.0),
            TextButton(
              onPressed: delete,
              child: const Icon(
                Icons.remove,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
