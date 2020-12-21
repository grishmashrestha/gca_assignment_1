import 'package:flutter/material.dart';
import 'package:gca_assignment1/model/FeedItem.dart';

class FeedItemDetail extends StatefulWidget {
  final FeedItem feedItem;
  FeedItemDetail({Key key, @required this.feedItem}) : super(key: key);
  @override
  _FeedItemDetailState createState() => _FeedItemDetailState();
}

class _FeedItemDetailState extends State<FeedItemDetail> {
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
