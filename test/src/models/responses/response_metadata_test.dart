import 'package:ht_shared/ht_shared.dart';
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
      'request_id': requestId, // Corrected key
      'timestamp': timestamp.toIso8601String(),
    };

    const partialMetadataRequestId = ResponseMetadata(requestId: requestId);
    final partialJsonRequestId = {'request_id': requestId}; // Corrected key

    final partialMetadataTimestamp = ResponseMetadata(timestamp: timestamp);
    final partialJsonTimestamp = {'timestamp': timestamp.toIso8601String()};

    const emptyMetadata = ResponseMetadata();
    final emptyJson = <String, dynamic>{};

    test('supports value equality', () {
      expect(
        fullMetadata,
        equals(ResponseMetadata(requestId: requestId, timestamp: timestamp)),
      );
      expect(fullMetadata, isNot(equals(partialMetadataRequestId)));
      expect(fullMetadata, isNot(equals(partialMetadataTimestamp)));
      expect(fullMetadata, isNot(equals(emptyMetadata)));
    });

    test('fromJson creates correct object from full JSON', () {
      expect(ResponseMetadata.fromJson(fullJson), equals(fullMetadata));
    });

    test(
      'fromJson creates correct object from partial JSON (requestId only)',
      () {
        expect(
          ResponseMetadata.fromJson(partialJsonRequestId),
          equals(partialMetadataRequestId),
        );
      },
    );

    test(
      'fromJson creates correct object from partial JSON (timestamp only)',
      () {
        expect(
          ResponseMetadata.fromJson(partialJsonTimestamp),
          equals(partialMetadataTimestamp),
        );
      },
    );

    test('fromJson creates correct object from empty JSON', () {
      expect(ResponseMetadata.fromJson(emptyJson), equals(emptyMetadata));
    });

    test('toJson produces correct full JSON', () {
      expect(fullMetadata.toJson(), equals(fullJson));
    });

    test('toJson produces correct partial JSON (requestId only)', () {
      expect(partialMetadataRequestId.toJson(), equals(partialJsonRequestId));
    });

    test('toJson produces correct partial JSON (timestamp only)', () {
      expect(partialMetadataTimestamp.toJson(), equals(partialJsonTimestamp));
    });

    test('toJson produces correct empty JSON', () {
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
