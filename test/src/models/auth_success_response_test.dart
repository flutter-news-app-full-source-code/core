import 'package:ht_shared/ht_shared.dart';
import 'package:test/test.dart';

void main() {
  group('AuthSuccessResponse', () {
    // Sample User for testing
    const testUser = User(
      id: 'user-123',
      email: 'test@example.com',
      isAnonymous: false,
    );
    const testToken = 'sample-jwt-token';

    // Sample AuthSuccessResponse instance
    const authSuccessResponse = AuthSuccessResponse(
      user: testUser,
      token: testToken,
    );

    // Sample JSON map corresponding to the instance
    final authSuccessResponseJson = {
      'user': testUser.toJson(), // Use User's toJson
      'token': testToken,
    };

    test('constructor works correctly', () {
      expect(authSuccessResponse.user, equals(testUser));
      expect(authSuccessResponse.token, equals(testToken));
    });

    group('fromJson', () {
      test('should correctly deserialize from valid JSON', () {
        final response = AuthSuccessResponse.fromJson(authSuccessResponseJson);
        expect(response, equals(authSuccessResponse));
        expect(response.user, equals(testUser));
        expect(response.token, equals(testToken));
      });

      test('should throw if required fields are missing', () {
        // Missing 'user'
        final jsonMissingUser = {'token': testToken};
        expect(
          () => AuthSuccessResponse.fromJson(jsonMissingUser),
          throwsA(isA<TypeError>()), // Or specific JsonKeyRequiredError
        );

        // Missing 'token'
        final jsonMissingToken = {'user': testUser.toJson()};
        expect(
          () => AuthSuccessResponse.fromJson(jsonMissingToken),
          throwsA(isA<TypeError>()), // Or specific JsonKeyRequiredError
        );
      });

      test('should throw if field types are incorrect', () {
        // Incorrect type for 'user'
        final jsonWrongUserType = {
          'user': 'not-a-user-map',
          'token': testToken,
        };
        expect(
          () => AuthSuccessResponse.fromJson(jsonWrongUserType),
          throwsA(isA<TypeError>()),
        );

        // Incorrect type for 'token'
        final jsonWrongTokenType = {
          'user': testUser.toJson(),
          'token': 12345, // Should be String
        };
        expect(
          () => AuthSuccessResponse.fromJson(jsonWrongTokenType),
          throwsA(isA<TypeError>()),
        );
      });
    });

    group('toJson', () {
      test('should correctly serialize to JSON', () {
        final json = authSuccessResponse.toJson();
        expect(json, equals(authSuccessResponseJson));
      });
    });

    group('copyWith', () {
      test('should create an identical copy if no values are provided', () {
        final copiedResponse = authSuccessResponse.copyWith();
        expect(copiedResponse, equals(authSuccessResponse));
        // Ensure it's a new instance
        expect(identical(copiedResponse, authSuccessResponse), isFalse);
      });

      test('should create a copy with updated user', () {
        const updatedUser = User(
          id: 'user-456',
          email: 'updated@example.com',
          isAnonymous: true,
        );
        final copiedResponse = authSuccessResponse.copyWith(user: updatedUser);

        expect(copiedResponse.user, equals(updatedUser));
        expect(copiedResponse.token, equals(authSuccessResponse.token));
        expect(copiedResponse, isNot(equals(authSuccessResponse)));
      });

      test('should create a copy with updated token', () {
        const updatedToken = 'new-jwt-token-abc';
        final copiedResponse = authSuccessResponse.copyWith(
          token: updatedToken,
        );

        expect(copiedResponse.user, equals(authSuccessResponse.user));
        expect(copiedResponse.token, equals(updatedToken));
        expect(copiedResponse, isNot(equals(authSuccessResponse)));
      });

      test('should create a copy with both user and token updated', () {
        const updatedUser = User(id: 'user-789', isAnonymous: true);
        const updatedToken = 'another-token-xyz';
        final copiedResponse = authSuccessResponse.copyWith(
          user: updatedUser,
          token: updatedToken,
        );

        expect(copiedResponse.user, equals(updatedUser));
        expect(copiedResponse.token, equals(updatedToken));
        expect(copiedResponse, isNot(equals(authSuccessResponse)));
      });
    });

    group('Equatable', () {
      test('should equate two identical instances', () {
        const response1 = AuthSuccessResponse(user: testUser, token: testToken);
        const response2 = AuthSuccessResponse(user: testUser, token: testToken);
        expect(response1, equals(response2));
        expect(response1.hashCode, equals(response2.hashCode));
      });

      test('should not equate instances with different users', () {
        const differentUser = User(id: 'diff-user', isAnonymous: false);
        const response1 = AuthSuccessResponse(user: testUser, token: testToken);
        const response2 = AuthSuccessResponse(
          user: differentUser,
          token: testToken,
        );
        expect(response1, isNot(equals(response2)));
        expect(response1.hashCode, isNot(equals(response2.hashCode)));
      });

      test('should not equate instances with different tokens', () {
        const differentToken = 'different-token';
        const response1 = AuthSuccessResponse(user: testUser, token: testToken);
        const response2 = AuthSuccessResponse(
          user: testUser,
          token: differentToken,
        );
        expect(response1, isNot(equals(response2)));
        expect(response1.hashCode, isNot(equals(response2.hashCode)));
      });

      test('props list should contain user and token', () {
        expect(authSuccessResponse.props, equals([testUser, testToken]));
      });
    });
  });
}
