import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('ResponseMetadata', () {
    final timestamp = DateTime.utc(2024, 5, 20, 10, 30);
    const requestId = 'req-12345';

    final fullMetadata = ResponseMetadata(
      requestId: requestId,
      timestamp: timestamp,
    );

    final fullJson = {
      'requestId': requestId,
      'timestamp': timestamp.toIso8601String(),
    };

    final partialMetadataRequestId = ResponseMetadata(
      requestId: requestId,
      timestamp: DateTime.utc(2023), // Default timestamp
    );
    final partialJsonRequestId = {
      'requestId': requestId,
      'timestamp': '2023-01-01T00:00:00.000Z',
    };

    final partialMetadataTimestamp = ResponseMetadata(
      requestId: 'default-req-id', // Default requestId
      timestamp: timestamp,
    );
    final partialJsonTimestamp = {
      'requestId': 'default-req-id',
      'timestamp': timestamp.toIso8601String(),
    };

    final emptyMetadata = ResponseMetadata(
      requestId: 'default-req-id',
      timestamp: DateTime.utc(2023),
    );
    final emptyJson = {
      'requestId': 'default-req-id',
      'timestamp': '2023-01-01T00:00:00.000Z',
    };

    test('supports value equality', () {
      expect(
        fullMetadata,
        equals(ResponseMetadata(requestId: requestId, timestamp: timestamp)),
      );
      expect(
        fullMetadata,
        isNot(equals(partialMetadataRequestId)),
      ); // Still not equal due to different default values
      expect(
        fullMetadata,
        isNot(equals(partialMetadataTimestamp)),
      ); // Still not equal due to different default values
      expect(
        fullMetadata,
        isNot(equals(emptyMetadata)),
      ); // Still not equal due to different default values
    });

    test('fromJson creates correct object from full JSON', () {
      expect(ResponseMetadata.fromJson(fullJson), equals(fullMetadata));
    });

    test(
      'fromJson creates correct object from JSON with default timestamp',
      () {
        expect(
          ResponseMetadata.fromJson(partialJsonRequestId),
          equals(partialMetadataRequestId),
        );
      },
    );

    test(
      'fromJson creates correct object from JSON with default requestId',
      () {
        expect(
          ResponseMetadata.fromJson(partialJsonTimestamp),
          equals(partialMetadataTimestamp),
        );
      },
    );

    test('fromJson creates correct object from JSON with all defaults', () {
      expect(ResponseMetadata.fromJson(emptyJson), equals(emptyMetadata));
    });

    test('toJson produces correct full JSON', () {
      expect(fullMetadata.toJson(), equals(fullJson));
    });

    test('toJson produces correct JSON with default timestamp', () {
      expect(partialMetadataRequestId.toJson(), equals(partialJsonRequestId));
    });

    test('toJson produces correct JSON with default requestId', () {
      expect(partialMetadataTimestamp.toJson(), equals(partialJsonTimestamp));
    });

    test('toJson produces correct JSON with all defaults', () {
      expect(emptyMetadata.toJson(), equals(emptyJson));
    });

    test('copyWith creates a copy with updated values', () {
      final updatedTimestamp = DateTime.utc(2025);
      const updatedRequestId = 'req-67890';

      expect(
        fullMetadata.copyWith(requestId: updatedRequestId),
        equals(
          ResponseMetadata(requestId: updatedRequestId, timestamp: timestamp),
        ),
      );
      expect(
        fullMetadata.copyWith(timestamp: updatedTimestamp),
        equals(
          ResponseMetadata(requestId: requestId, timestamp: updatedTimestamp),
        ),
      );
      expect(
        fullMetadata.copyWith(
          requestId: updatedRequestId,
          timestamp: updatedTimestamp,
        ),
        equals(
          ResponseMetadata(
            requestId: updatedRequestId,
            timestamp: updatedTimestamp,
          ),
        ),
      );
      // Test copyWith with null to ensure it keeps original value
      expect(fullMetadata.copyWith(), equals(fullMetadata));
    });
  });
}
