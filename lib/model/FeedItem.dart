class FeedItem {
  const FeedItem(
      {this.userName,
      this.postActivity,
      this.postDescription,
      this.postImageUrl,
      this.postLikeCount,
      this.postCommentCount,
      this.postDateTime,
      this.postShareCount,
      this.userProfileImageUrl});
  final String userName,
      postActivity,
      postDescription,
      postImageUrl,
      userProfileImageUrl;
  final DateTime postDateTime;
  final int postLikeCount, postShareCount, postCommentCount;
}
