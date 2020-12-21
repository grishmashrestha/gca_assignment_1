import 'package:flutter/material.dart';
import 'package:gca_assignment1/screens/feedItems.dart';

class Feed extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
    return new GestureDetector(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => FeedItems())),
      child: Container(
          alignment: Alignment.center,
          child: Text(
            _feedItems[index].user,
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _feedItems.length,
      itemExtent: 60,
      itemBuilder: _listItemBuilder,
    );
  }
}

class FeedItem {
  const FeedItem(
      {this.user,
      this.activity,
      this.description,
      this.imageUrl,
      this.likeCount});
  final String user, activity, description, imageUrl;
  final int likeCount;
}

final List<FeedItem> _feedItems = <FeedItem>[
  FeedItem(
    user: "Facebook App",
    activity: "updated their cover photo.",
    description: "Pamper your pooch. Lala",
    imageUrl:
        "http://someinterestingfacts.net/wp-content/uploads/2012/12/happy-dog.jpg",
    likeCount: 100,
  ),
  FeedItem(
    user: "Facebook App",
    activity: "updated their cover photo.",
    description: "Pamper your pooch. Lala",
    imageUrl:
        "http://someinterestingfacts.net/wp-content/uploads/2012/12/happy-dog.jpg",
    likeCount: 100,
  ),
  FeedItem(
    user: "Facebook App",
    activity: "updated their cover photo.",
    description: "Pamper your pooch. Lala",
    imageUrl:
        "http://someinterestingfacts.net/wp-content/uploads/2012/12/happy-dog.jpg",
    likeCount: 100,
  ),
  FeedItem(
    user: "Facebook App",
    activity: "updated their cover photo.",
    description: "Pamper your pooch. Lala",
    imageUrl:
        "http://someinterestingfacts.net/wp-content/uploads/2012/12/happy-dog.jpg",
    likeCount: 100,
  ),
];
