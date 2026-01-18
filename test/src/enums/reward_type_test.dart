import 'package:core/src/enums/reward_type.dart';
import 'package:test/test.dart';

void main() {
  group('RewardType', () {
    test('has correct values', () {
      expect(
        RewardType.values,
        containsAll([RewardType.adFree, RewardType.dailyDigest]),
      );
    });

    test('has correct string values', () {
      expect(RewardType.adFree.name, 'adFree');
      expect(RewardType.dailyDigest.name, 'dailyDigest');
    });

    test('can be created from string values', () {
      expect(RewardType.values.byName('adFree'), RewardType.adFree);
      expect(RewardType.values.byName('dailyDigest'), RewardType.dailyDigest);
    });
  });
}
