import 'package:flutter/material.dart';

class BookDetail extends StatelessWidget {
  final int bookId;
  final String title;
  final String thumbnailUrl;
  final int price;

  BookDetail(
    this.bookId,
    this.title,
    this.thumbnailUrl,
    this.price,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              thumbnailUrl,
              fit: BoxFit.cover,
            ),
            Text("$price บาท",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            FlatButton(
              onPressed: () {},
              height: 45,
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                "Add to Cart",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
