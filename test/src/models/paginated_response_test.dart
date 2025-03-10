import 'package:ht_shared/ht_shared.dart';
import 'package:test/test.dart';

void main() {
  group('PaginatedResponse', () {
    test('supports value equality', () {
      const response1 = PaginatedResponse<int>(
        items: [1, 2, 3],
        cursor: 'abc',
        hasMore: true,
      );
      const response2 = PaginatedResponse<int>(
        items: [1, 2, 3],
        cursor: 'abc',
        hasMore: true,
      );
      expect(response1, response2);
    });

    test('fromJson creates a PaginatedResponse from JSON', () {
      final json = {
        'items': [1, 2, 3],
        'cursor': 'abc',
        'hasMore': true,
      };
      final response = PaginatedResponse<int>.fromJson(
        json,
        (json) => json! as int,
      );
      expect(response.items, [1, 2, 3]);
      expect(response.cursor, 'abc');
      expect(response.hasMore, true);
    });

    test('toJson converts a PaginatedResponse to JSON', () {
      const response = PaginatedResponse<int>(
        items: [1, 2, 3],
        cursor: 'abc',
        hasMore: true,
      );
      final json = response.toJson((value) => value);
      expect(json['items'], [1, 2, 3]);
      expect(json['cursor'], 'abc');
      expect(json['hasMore'], true);
    });

    test('props returns a list of properties', () {
      const response = PaginatedResponse<int>(
        items: [1, 2, 3],
        cursor: 'abc',
        hasMore: true,
      );
      expect(response.props, [
        [1, 2, 3],
        'abc',
        true,
      ]);
    });

    test('copyWith creates a new instance with updated values', () {
      const response = PaginatedResponse<int>(
        items: [1, 2, 3],
        cursor: 'abc',
        hasMore: true,
      );
      final newResponse = response.copyWith(
        items: [4, 5, 6],
        cursor: 'def',
        hasMore: false,
      );
      expect(newResponse.items, [4, 5, 6]);
      expect(newResponse.cursor, 'def');
      expect(newResponse.hasMore, false);
    });

     test('copyWith creates a new instance with same values if no new values provided', () {
      const response = PaginatedResponse<int>(
        items: [1, 2, 3],
        cursor: 'abc',
        hasMore: true,
      );
      final newResponse = response.copyWith();
      expect(newResponse.items, [1, 2, 3]);
      expect(newResponse.cursor, 'abc');
      expect(newResponse.hasMore, true);
    });
  });
}
