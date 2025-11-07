import 'package:core/src/models/config/firebase_provider_config.dart';
import 'package:test/test.dart';

void main() {
  group('FirebaseProviderConfig', () {
    // Since a specific fixture file was not provided, sample data is
    // created here for testing purposes.
    const config = FirebaseProviderConfig(
      projectId: 'test-project-id',
      clientEmail: 'test-client-email@example.com',
      privateKey: 'test-private-key',
    );

    final json = {
      'projectId': 'test-project-id',
      'clientEmail': 'test-client-email@example.com',
      'privateKey': 'test-private-key',
      'provider': 'firebase', // Manually added by toJson
    };

    test('supports value equality', () {
      // Arrange: Create another instance with the same values.
      const anotherConfig = FirebaseProviderConfig(
        projectId: 'test-project-id',
        clientEmail: 'test-client-email@example.com',
        privateKey: 'test-private-key',
      );

      // Assert: The two instances should be equal.
      expect(config, equals(anotherConfig));
    });

    test('props are correct', () {
      // Assert: The props list should contain all the fields including provider.
      expect(
        config.props,
        equals([
          'firebase',
          'test-project-id',
          'test-client-email@example.com',
          'test-private-key',
        ]),
      );
    });

    test('can be created from JSON', () {
      // Act: Create an instance from the JSON map.
      final fromJson = FirebaseProviderConfig.fromJson(json);

      // Assert: The created instance should be equal to the original.
      expect(fromJson, equals(config));
    });

    test('can be converted to JSON', () {
      // Act: Convert the instance to a JSON map.
      final toJson = config.toJson();

      // Assert: The resulting map should match the original JSON map.
      expect(toJson, equals(json));
    });

    test('copyWith creates a copy with updated values', () {
      // Arrange: Define new values.
      const newProjectId = 'new-project-id';

      // Act: Create a copy with the new value.
      final copiedConfig = config.copyWith(projectId: newProjectId);

      // Assert: The new instance should have the updated value.
      expect(copiedConfig.projectId, equals(newProjectId));
      expect(copiedConfig.clientEmail, equals(config.clientEmail));

      // Assert: The original instance should remain unchanged.
      expect(config.projectId, isNot(equals(newProjectId)));
    });

    test(
      'copyWith creates an identical copy when no arguments are provided',
      () {
        // Act: Create a copy without providing any arguments.
        final copiedConfig = config.copyWith();

        // Assert: The copied instance should be equal to the original.
        expect(copiedConfig, equals(config));
      },
    );
  });
}
