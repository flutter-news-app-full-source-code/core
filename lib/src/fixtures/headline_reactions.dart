import 'package:core/core.dart';

/// A list of predefined reactions for fixture data.
/// This creates a list of reactions with varying types.
final List<Reaction> reactionsFixturesData = () {
  final reactions = <Reaction>[];
  const reactionTypes = ReactionType.values;

  // Create 100 reactions, cycling through the available reaction types.
  for (var i = 0; i < 100; i++) {
    reactions.add(
      Reaction(reactionType: reactionTypes[i % reactionTypes.length]),
    );
  }

  return reactions;
}();
