import 'package:core/src/enums/reward_type.dart';
import 'package:core/src/models/config/rewards_config.dart';
import 'package:test/test.dart';

void main() {
  group('RewardsConfig', () {
    const rewardDetails = RewardDetails(enabled: true, durationDays: 7);
    const rewardsConfig = RewardsConfig(
      enabled: true,
      rewards: {RewardType.adFree: rewardDetails},
    );
    final json = {
      'enabled': true,
      'rewards': {
        'adFree': {'enabled': true, 'durationDays': 7},
      },
    };

    test('can be instantiated', () {
      expect(rewardsConfig, isA<RewardsConfig>());
    });

    test('supports value equality', () {
      expect(
        rewardsConfig,
        equals(
          const RewardsConfig(
            enabled: true,
            rewards: {RewardType.adFree: rewardDetails},
          ),
        ),
      );
    });

    test('props are correct', () {
      expect(
        rewardsConfig.props,
        equals([
          true,
          {RewardType.adFree: rewardDetails},
        ]),
      );
    });

    test('can be created from JSON', () {
      expect(RewardsConfig.fromJson(json), equals(rewardsConfig));
    });

    test('can be converted to JSON', () {
      expect(rewardsConfig.toJson(), equals(json));
    });

    test('copyWith creates a copy with updated values', () {
      final updated = rewardsConfig.copyWith(enabled: false);
      expect(updated.enabled, isFalse);
      expect(updated.rewards, equals(rewardsConfig.rewards));
    });
  });

  group('RewardDetails', () {
    const rewardDetails = RewardDetails(enabled: true, durationDays: 7);
    final json = {'enabled': true, 'durationDays': 7};

    test('can be instantiated', () {
      expect(rewardDetails, isA<RewardDetails>());
    });

    test('supports value equality', () {
      expect(
        rewardDetails,
        equals(const RewardDetails(enabled: true, durationDays: 7)),
      );
    });

    test('props are correct', () {
      expect(rewardDetails.props, equals([true, 7]));
    });

    test('can be created from JSON', () {
      expect(RewardDetails.fromJson(json), equals(rewardDetails));
    });

    test('can be converted to JSON', () {
      expect(rewardDetails.toJson(), equals(json));
    });

    test('copyWith creates a copy with updated values', () {
      final updated = rewardDetails.copyWith(durationDays: 14);
      expect(updated.durationDays, 14);
      expect(updated.enabled, isTrue);
    });
  });
}
