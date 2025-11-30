import 'package:core/core.dart';

/// Generates a list of predefined engagements for fixture data.
///
/// This function can be configured to generate data in either English or
/// Arabic. It pairs reactions with comments to create realistic engagement
/// scenarios.
List<Engagement> getEngagementsFixturesData({
  String languageCode = 'en',
  DateTime? now,
}) {
  final engagements = <Engagement>[];
  final reactions = reactionsFixturesData;
  final comments = getHeadlineCommentsFixturesData(
    languageCode: languageCode,
    now: now,
  );

  for (var i = 0; i < reactions.length; i++) {
    final reaction = reactions[i];
    // Pair every other reaction with a comment for variety
    final comment = i.isEven ? comments[i] : null;

    engagements.add(
      Engagement(
        entityId: reaction.entityId,
        entityType: reaction.entityType,
        reaction: reaction,
        comment: comment,
      ),
    );
  }

  return engagements;
}

const _engagementIds = [
  kEngagementId1,
  kEngagementId2,
  kEngagementId3,
  kEngagementId4,
  kEngagementId5,
  kEngagementId6,
  kEngagementId7,
  kEngagementId8,
  kEngagementId9,
  kEngagementId10,
  kEngagementId11,
  kEngagementId12,
  kEngagementId13,
  kEngagementId14,
  kEngagementId15,
  kEngagementId16,
  kEngagementId17,
  kEngagementId18,
  kEngagementId19,
  kEngagementId20,
  kEngagementId21,
  kEngagementId22,
  kEngagementId23,
  kEngagementId24,
  kEngagementId25,
  kEngagementId26,
  kEngagementId27,
  kEngagementId28,
  kEngagementId29,
  kEngagementId30,
  kEngagementId31,
  kEngagementId32,
  kEngagementId33,
  kEngagementId34,
  kEngagementId35,
  kEngagementId36,
  kEngagementId37,
  kEngagementId38,
  kEngagementId39,
  kEngagementId40,
  kEngagementId41,
  kEngagementId42,
  kEngagementId43,
  kEngagementId44,
  kEngagementId45,
  kEngagementId46,
  kEngagementId47,
  kEngagementId48,
  kEngagementId49,
  kEngagementId50,
  kEngagementId51,
  kEngagementId52,
  kEngagementId53,
  kEngagementId54,
  kEngagementId55,
  kEngagementId56,
  kEngagementId57,
  kEngagementId58,
  kEngagementId59,
  kEngagementId60,
  kEngagementId61,
  kEngagementId62,
  kEngagementId63,
  kEngagementId64,
  kEngagementId65,
  kEngagementId66,
  kEngagementId67,
  kEngagementId68,
  kEngagementId69,
  kEngagementId70,
  kEngagementId71,
  kEngagementId72,
  kEngagementId73,
  kEngagementId74,
  kEngagementId75,
  kEngagementId76,
  kEngagementId77,
  kEngagementId78,
  kEngagementId79,
  kEngagementId80,
  kEngagementId81,
  kEngagementId82,
  kEngagementId83,
  kEngagementId84,
  kEngagementId85,
  kEngagementId86,
  kEngagementId87,
  kEngagementId88,
  kEngagementId89,
  kEngagementId90,
  kEngagementId91,
  kEngagementId92,
  kEngagementId93,
  kEngagementId94,
  kEngagementId95,
  kEngagementId96,
  kEngagementId97,
  kEngagementId98,
  kEngagementId99,
  kEngagementId100,
];
