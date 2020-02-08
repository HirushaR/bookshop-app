import 'package:flutter/material.dart';
import 'models/book.dart';

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

class BooksHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            CustomTitleBar(),
            HorizontalListView(),

          ],
        ),
      ),
    );
  }
}

class CustomTitleBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 35),
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
          Expanded(
            child: Text("BooksApp",
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: "lovelo",
                )),
          )
        ],
      ),
    );
  }
}

class HorizontalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [Color(0xfff8f8f8), Colors.white],
        ),
        border: Border(bottom: BorderSide(color: Color(0xfff0f0f0), width: 2)),
      ),
      padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 250,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: booklist.books.length,
              itemBuilder: (BuildContext context, int i) {
                if (booklist.books[i].franchise) {
                  return ShowCase(
                    wideImage: booklist.books[i].wideImage,
                    bookObject: booklist.books[i],
                  );
                } else {
                  return Container();
                }
              },
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Text(
            "BEST SELLERS",
            style: TextStyle(letterSpacing: 1.5, color: Colors.black54),
          ),
          Divider(
            color: Colors.black54,
          ),
          Text(
            "Novels with a popular franchise",
            style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w700,
                fontSize: 30),
            softWrap: true,
          ),
        ],
      ),
    );
  }
}

class ShowCase extends StatelessWidget {
  const ShowCase({
    @required this.wideImage,
    @required this.bookObject,
  });

  final String wideImage;
  final Book bookObject;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        /* /* leaving this null, checkout the master branch to get its code */ */
      },
      child: Row(
        children: <Widget>[
          Container(
            height: 250,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(wideImage, fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}