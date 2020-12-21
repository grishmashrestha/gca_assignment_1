import 'package:flutter/material.dart';

class FeedItems extends StatefulWidget {
  @override
  _FeedItemsState createState() => _FeedItemsState();
}

class _FeedItemsState extends State<FeedItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User's post"),
      ),
      body: Center(
        child: Text("This is the detail in the next page"),
      ),
    );
  }
}
