import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BooksApp",
      home: BooksHome(),
    );
  }
}

class BooksHome extends StatefulWidget {
  @override
  _BooksHomeState createState() => _BooksHomeState();
}

class _BooksHomeState extends State<BooksHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            CustomTitleBar(),
          ],
        ),
      ),
    );
  }
}

class CustomTitleBar extends StatefulWidget {
  @override
  _CustomTitleBarState createState() => _CustomTitleBarState();
}

class _CustomTitleBarState extends State<CustomTitleBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.book,
            size: 30,
            color: Colors.black,
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(child: Text(
            'Bookshop',
            style: TextStyle(
              fontSize: 30,

            ),
          ))
        ],
      ),
    );
  }
}


