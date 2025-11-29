import 'package:core/core.dart';

/// A list of predefined comments for fixture data.
/// This creates 10 comments for each of the first 10 users, with each
/// comment targeting a unique headline.
final List<Comment> commentsFixturesData = () {
  final comments = <Comment>[];
  final users = usersFixturesData.take(10).toList();
  final headlines = headlinesFixturesData.take(100).toList();
  final commentIds = [
    kCommentId1,
    kCommentId2,
    kCommentId3,
    kCommentId4,
    kCommentId5,
    kCommentId6,
    kCommentId7,
    kCommentId8,
    kCommentId9,
    kCommentId10,
    kCommentId11,
    kCommentId12,
    kCommentId13,
    kCommentId14,
    kCommentId15,
    kCommentId16,
    kCommentId17,
    kCommentId18,
    kCommentId19,
    kCommentId20,
    kCommentId21,
    kCommentId22,
    kCommentId23,
    kCommentId24,
    kCommentId25,
    kCommentId26,
    kCommentId27,
    kCommentId28,
    kCommentId29,
    kCommentId30,
    kCommentId31,
    kCommentId32,
    kCommentId33,
    kCommentId34,
    kCommentId35,
    kCommentId36,
    kCommentId37,
    kCommentId38,
    kCommentId39,
    kCommentId40,
    kCommentId41,
    kCommentId42,
    kCommentId43,
    kCommentId44,
    kCommentId45,
    kCommentId46,
    kCommentId47,
    kCommentId48,
    kCommentId49,
    kCommentId50,
    kCommentId51,
    kCommentId52,
    kCommentId53,
    kCommentId54,
    kCommentId55,
    kCommentId56,
    kCommentId57,
    kCommentId58,
    kCommentId59,
    kCommentId60,
    kCommentId61,
    kCommentId62,
    kCommentId63,
    kCommentId64,
    kCommentId65,
    kCommentId66,
    kCommentId67,
    kCommentId68,
    kCommentId69,
    kCommentId70,
    kCommentId71,
    kCommentId72,
    kCommentId73,
    kCommentId74,
    kCommentId75,
    kCommentId76,
    kCommentId77,
    kCommentId78,
    kCommentId79,
    kCommentId80,
    kCommentId81,
    kCommentId82,
    kCommentId83,
    kCommentId84,
    kCommentId85,
    kCommentId86,
    kCommentId87,
    kCommentId88,
    kCommentId89,
    kCommentId90,
    kCommentId91,
    kCommentId92,
    kCommentId93,
    kCommentId94,
    kCommentId95,
    kCommentId96,
    kCommentId97,
    kCommentId98,
    kCommentId99,
    kCommentId100,
  ];
  final commentContents = [
    'This is a really insightful article. It completely changed my perspective.',
    "I'm not sure I agree with the author's conclusion, but it's a well-argued piece.",
    'Finally, someone is talking about this! More people need to read this.',
    'A bit simplistic, but a good introduction to the topic for beginners.',
    'The data presented here is fascinating. I wonder what the long-term implications are.',
    'This is exactly what I was looking for. Thank you for sharing!',
    'I have a few questions about the methodology used in this study.',
    'This made me laugh out loud. Great writing!',
    "A powerful and moving story. It's important to hear these voices.",
    'I think there are some key facts missing from this analysis.',
  ];

  for (var i = 0; i < users.length; i++) {
    for (var j = 0; j < 10; j++) {
      final user = users[i];
      final headlineIndex = i * 10 + j;
      final headline = headlines[headlineIndex];
      final commentIndex = i * 10 + j;

      // Vary the status for realism
      var status = CommentStatus.approved;
      if (commentIndex % 15 == 0) {
        status = CommentStatus.pendingReview;
      } else if (commentIndex % 25 == 0) {
        status = CommentStatus.rejected;
      }

      comments.add(
        Comment(
          id: commentIds[commentIndex],
          headlineId: headline.id,
          userId: user.id,
          content: commentContents[j],
          status: status,
          createdAt: DateTime.now().subtract(Duration(days: i, hours: j * 2)),
          updatedAt: DateTime.now().subtract(Duration(days: i, hours: j * 2)),
        ),
      );
    }
  }

  return comments;
}();
