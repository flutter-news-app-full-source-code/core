import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('MaintenanceConfig', () {
    final maintenanceConfigFixture =
        remoteConfigsFixturesData.first.app.maintenance;
    final json = maintenanceConfigFixture.toJson();

    test('can be instantiated', () {
      expect(maintenanceConfigFixture, isA<MaintenanceConfig>());
    });

    test('supports value equality', () {
      final anotherConfig = remoteConfigsFixturesData.first.app.maintenance;
      expect(maintenanceConfigFixture, equals(anotherConfig));
    });

    test('props are correct', () {
      expect(
        maintenanceConfigFixture.props,
        equals([maintenanceConfigFixture.isUnderMaintenance]),
      );
    });

    test('can be created from JSON', () {
      final fromJson = MaintenanceConfig.fromJson(json);
      expect(fromJson, equals(maintenanceConfigFixture));
    });

    test('can be converted to JSON', () {
      final toJson = maintenanceConfigFixture.toJson();
      expect(toJson, equals(json));
    });

    test('copyWith creates a copy with updated values', () {
      final updatedConfig = maintenanceConfigFixture.copyWith(
        isUnderMaintenance: true,
      );

      expect(updatedConfig.isUnderMaintenance, isTrue);
      expect(updatedConfig, isNot(equals(maintenanceConfigFixture)));
    });

    test(
      'copyWith creates an identical copy when no arguments are provided',
      () {
        final copiedConfig = maintenanceConfigFixture.copyWith();
        expect(copiedConfig, equals(maintenanceConfigFixture));
      },
    );
  });
}
