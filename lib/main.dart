import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const RandomLetters());
}

class RandomLetters extends StatelessWidget {
  const RandomLetters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random(); // Add this line.
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: Center(                          // Drop the const, and
          //child: Text('Hello World'),        // Replace this text...
          child: Text(wordPair.asPascalCase),  // With this text.
        ),
      ),
    );
  }
}