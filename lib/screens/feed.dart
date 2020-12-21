import 'package:flutter/material.dart';
import 'package:gca_assignment1/model/FeedItem.dart';
import 'package:gca_assignment1/screens/feedItemDetail.dart';

class Feed extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
    var firstRow = Row(
      children: [
        Container(
            width: 30.0,
            height: 30.0,
            decoration: new BoxDecoration(
                shape: BoxShape.circle,
                image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: new NetworkImage(
                        _feedItemDataset[index].userProfileImageUrl)))),
        Row(
          children: [
            Text(_feedItemDataset[index].userName +
                _feedItemDataset[index].postActivity)
          ],
        ),
        Row(
          children: [Icon(Icons.more_horiz)],
        )
      ],
    );
    var secondRow = Row(
      children: [
        Text(
          _feedItemDataset[index].postDescription,
          textAlign: TextAlign.left,
          style: TextStyle(),
        )
      ],
    );
    var thirdRow = Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Image.network(
          _feedItemDataset[index].postImageUrl,
          width: 350,
        )
      ],
    );
    var fourthRow = Row(
      children: [
        Row(
          children: [
            Icon(
              Icons.thumb_up,
              color: Colors.blue,
            ),
            Text(_feedItemDataset[index].postLikeCount.toString()),
          ],
        ),
        Row(
          children: [
            Text(_feedItemDataset[index].postCommentCount.toString()),
            Text("Comments"),
          ],
        ),
        Icon(
          Icons.circle,
          size: 5,
        ),
        Row(
          children: [
            Text(_feedItemDataset[index].postShareCount.toString()),
            Text("Shares"),
          ],
        ),
      ],
    );
    var fifthRow = Row(
      children: [
        Row(
          children: [
            Icon(
              Icons.thumb_up,
              color: Colors.grey,
            ),
            Text(
              "Like",
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.comment,
              color: Colors.grey,
            ),
            Text(
              "Comment",
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.reply,
              color: Colors.grey,
            ),
            Text(
              "Share",
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ],
    );
    var column = Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                firstRow,
                secondRow,
                thirdRow,
                fourthRow,
                fifthRow,
              ],
            ),
          )
        ]);
    return new GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => FeedItemDetail(
                    feedItem: null,
                  ))),
      child: column,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _feedItemDataset.length,
      itemBuilder: _listItemBuilder,
    );
  }
}

final List<FeedItem> _feedItemDataset = <FeedItem>[
  FeedItem(
    userName: "Facebook App",
    postActivity: "updated their cover photo.",
    postDescription:
        "Pamper your pooch. The Bark Shoppe is a per care facility in New York offering frooming productus and makeovers with your pet's individual needs in mind. Take a look and shop now to #BuyBlack: https://bit.y/BarkShoppe #LiftBlackVoices #MoreTogether",
    postImageUrl:
        "http://someinterestingfacts.net/wp-content/uploads/2012/12/happy-dog.jpg",
    postLikeCount: 100,
    postCommentCount: 100,
    postDateTime: DateTime.now(),
    postShareCount: 50,
    userProfileImageUrl:
        "https://facebookbrand.com/wp-content/uploads/2019/04/f_logo_RGB-Hex-Blue_512.png",
  ),
  FeedItem(
    userName: "John Smith",
    postActivity: "updated their cover photo.",
    postDescription: "Pamper your pooch. Lala",
    postImageUrl:
        "http://someinterestingfacts.net/wp-content/uploads/2012/12/happy-dog.jpg",
    postLikeCount: 100,
    postCommentCount: 100,
    postDateTime: DateTime.now(),
    postShareCount: 50,
    userProfileImageUrl:
        "http://someinterestingfacts.net/wp-content/uploads/2012/12/happy-dog.jpg",
  ),
  FeedItem(
    userName: "Facebook App",
    postActivity: "updated their cover photo.",
    postDescription:
        "Pamper your pooch. The Bark Shoppe is a per care facility in New York offering frooming productus and makeovers with your pet's individual needs in mind. Take a look and shop now to #BuyBlack: https://bit.y/BarkShoppe #LiftBlackVoices #MoreTogether",
    postImageUrl:
        "http://someinterestingfacts.net/wp-content/uploads/2012/12/happy-dog.jpg",
    postLikeCount: 100,
    postCommentCount: 100,
    postDateTime: DateTime.now(),
    postShareCount: 50,
    userProfileImageUrl:
        "https://facebookbrand.com/wp-content/uploads/2019/04/f_logo_RGB-Hex-Blue_512.png",
  ),
  FeedItem(
    userName: "John Smith",
    postActivity: "updated their cover photo.",
    postDescription: "Pamper your pooch. Lala",
    postImageUrl:
        "http://someinterestingfacts.net/wp-content/uploads/2012/12/happy-dog.jpg",
    postLikeCount: 100,
    postCommentCount: 100,
    postDateTime: DateTime.now(),
    postShareCount: 50,
    userProfileImageUrl:
        "http://someinterestingfacts.net/wp-content/uploads/2012/12/happy-dog.jpg",
  ),
  FeedItem(
    userName: "Facebook App",
    postActivity: "updated their cover photo.",
    postDescription:
        "Pamper your pooch. The Bark Shoppe is a per care facility in New York offering frooming productus and makeovers with your pet's individual needs in mind. Take a look and shop now to #BuyBlack: https://bit.y/BarkShoppe #LiftBlackVoices #MoreTogether",
    postImageUrl:
        "http://someinterestingfacts.net/wp-content/uploads/2012/12/happy-dog.jpg",
    postLikeCount: 100,
    postCommentCount: 100,
    postDateTime: DateTime.now(),
    postShareCount: 50,
    userProfileImageUrl:
        "https://facebookbrand.com/wp-content/uploads/2019/04/f_logo_RGB-Hex-Blue_512.png",
  ),
  FeedItem(
    userName: "John Smith",
    postActivity: "updated their cover photo.",
    postDescription: "Pamper your pooch. Lala",
    postImageUrl:
        "http://someinterestingfacts.net/wp-content/uploads/2012/12/happy-dog.jpg",
    postLikeCount: 100,
    postCommentCount: 100,
    postDateTime: DateTime.now(),
    postShareCount: 50,
    userProfileImageUrl:
        "http://someinterestingfacts.net/wp-content/uploads/2012/12/happy-dog.jpg",
  ),
  FeedItem(
    userName: "Facebook App",
    postActivity: "updated their cover photo.",
    postDescription:
        "Pamper your pooch. The Bark Shoppe is a per care facility in New York offering frooming productus and makeovers with your pet's individual needs in mind. Take a look and shop now to #BuyBlack: https://bit.y/BarkShoppe #LiftBlackVoices #MoreTogether",
    postImageUrl:
        "http://someinterestingfacts.net/wp-content/uploads/2012/12/happy-dog.jpg",
    postLikeCount: 100,
    postCommentCount: 100,
    postDateTime: DateTime.now(),
    postShareCount: 50,
    userProfileImageUrl:
        "https://facebookbrand.com/wp-content/uploads/2019/04/f_logo_RGB-Hex-Blue_512.png",
  ),
  FeedItem(
    userName: "John Smith",
    postActivity: "updated their cover photo.",
    postDescription: "Pamper your pooch. Lala",
    postImageUrl:
        "http://someinterestingfacts.net/wp-content/uploads/2012/12/happy-dog.jpg",
    postLikeCount: 100,
    postCommentCount: 100,
    postDateTime: DateTime.now(),
    postShareCount: 50,
    userProfileImageUrl:
        "http://someinterestingfacts.net/wp-content/uploads/2012/12/happy-dog.jpg",
  ),
];
