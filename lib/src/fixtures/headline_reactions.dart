import 'package:core/core.dart';

/// A list of predefined headline reactions for fixture data.
/// This creates 10 reactions for each of the first 10 users, with each
/// reaction targeting a unique headline.
final List<HeadlineReaction> headlineReactionsFixturesData = () {
  final reactions = <HeadlineReaction>[];
  final users = usersFixturesData.take(10).toList();
  final headlines = headlinesFixturesData.take(100).toList();
  final reactionIds = [
    kReactionId1,
    kReactionId2,
    kReactionId3,
    kReactionId4,
    kReactionId5,
    kReactionId6,
    kReactionId7,
    kReactionId8,
    kReactionId9,
    kReactionId10,
    kReactionId11,
    kReactionId12,
    kReactionId13,
    kReactionId14,
    kReactionId15,
    kReactionId16,
    kReactionId17,
    kReactionId18,
    kReactionId19,
    kReactionId20,
    kReactionId21,
    kReactionId22,
    kReactionId23,
    kReactionId24,
    kReactionId25,
    kReactionId26,
    kReactionId27,
    kReactionId28,
    kReactionId29,
    kReactionId30,
    kReactionId31,
    kReactionId32,
    kReactionId33,
    kReactionId34,
    kReactionId35,
    kReactionId36,
    kReactionId37,
    kReactionId38,
    kReactionId39,
    kReactionId40,
    kReactionId41,
    kReactionId42,
    kReactionId43,
    kReactionId44,
    kReactionId45,
    kReactionId46,
    kReactionId47,
    kReactionId48,
    kReactionId49,
    kReactionId50,
    kReactionId51,
    kReactionId52,
    kReactionId53,
    kReactionId54,
    kReactionId55,
    kReactionId56,
    kReactionId57,
    kReactionId58,
    kReactionId59,
    kReactionId60,
    kReactionId61,
    kReactionId62,
    kReactionId63,
    kReactionId64,
    kReactionId65,
    kReactionId66,
    kReactionId67,
    kReactionId68,
    kReactionId69,
    kReactionId70,
    kReactionId71,
    kReactionId72,
    kReactionId73,
    kReactionId74,
    kReactionId75,
    kReactionId76,
    kReactionId77,
    kReactionId78,
    kReactionId79,
    kReactionId80,
    kReactionId81,
    kReactionId82,
    kReactionId83,
    kReactionId84,
    kReactionId85,
    kReactionId86,
    kReactionId87,
    kReactionId88,
    kReactionId89,
    kReactionId90,
    kReactionId91,
    kReactionId92,
    kReactionId93,
    kReactionId94,
    kReactionId95,
    kReactionId96,
    kReactionId97,
    kReactionId98,
    kReactionId99,
    kReactionId100,
  ];
  const reactionTypes = ReactionType.values;

  for (var i = 0; i < users.length; i++) {
    for (var j = 0; j < 10; j++) {
      final user = users[i];
      final headlineIndex = i * 10 + j;
      final headline = headlines[headlineIndex];
      final reactionIndex = i * 10 + j;

      reactions.add(
        HeadlineReaction(
          id: reactionIds[reactionIndex],
          headlineId: headline.id,
          userId: user.id,
          reactionType: reactionTypes[reactionIndex % reactionTypes.length],
          createdAt: DateTime.now().subtract(Duration(days: i, hours: j)),
        ),
      );
    }
  }

  return reactions;
}();
