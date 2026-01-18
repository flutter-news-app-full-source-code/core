import 'package:core/src/enums/reward_type.dart';
import 'package:core/src/models/rewards/user_rewards.dart';
import 'package:test/test.dart';

void main() {
  group('UserRewards', () {
    final now = DateTime.now();
    final activeRewards = {RewardType.adFree: now.add(const Duration(days: 1))};
    final userRewards = UserRewards(
      id: '1',
      userId: 'user1',
      activeRewards: activeRewards,
    );
    final json = {
      'id': '1',
      'userId': 'user1',
      'activeRewards': {
        'adFree': activeRewards[RewardType.adFree]!.toIso8601String(),
      },
    };

    test('can be instantiated', () {
      expect(userRewards, isA<UserRewards>());
    });

    test('supports value equality', () {
      expect(
        userRewards,
        equals(
          UserRewards(id: '1', userId: 'user1', activeRewards: activeRewards),
        ),
      );
    });

    test('props are correct', () {
      expect(userRewards.props, equals(['1', 'user1', activeRewards]));
    });

    test('can be created from JSON', () {
      expect(UserRewards.fromJson(json), equals(userRewards));
    });

    test('can be converted to JSON', () {
      expect(userRewards.toJson(), equals(json));
    });

    test('copyWith creates a copy with updated values', () {
      final updated = userRewards.copyWith(id: '2');
      expect(updated.id, '2');
      expect(updated.userId, 'user1');
    });

    group('isRewardActive', () {
      test('returns true if reward is present and future', () {
        final rewards = UserRewards(
          id: '1',
          userId: 'u1',
          activeRewards: {
            RewardType.adFree: DateTime.now().add(const Duration(hours: 1)),
          },
        );
        expect(rewards.isRewardActive(RewardType.adFree), isTrue);
      });

      test('returns false if reward is present but past', () {
        final rewards = UserRewards(
          id: '1',
          userId: 'u1',
          activeRewards: {
            RewardType.adFree: DateTime.now().subtract(
              const Duration(hours: 1),
            ),
          },
        );
        expect(rewards.isRewardActive(RewardType.adFree), isFalse);
      });

      test('returns false if reward is not present', () {
        const rewards = UserRewards(id: '1', userId: 'u1', activeRewards: {});
        expect(rewards.isRewardActive(RewardType.adFree), isFalse);
      });
    });
  });
}
