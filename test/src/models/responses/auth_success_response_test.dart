import 'package:core/core.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:test/test.dart';

void main() {
  group('AuthSuccessResponse', () {
    // Sample User for testing
    final testUser = User(
      id: 'user-123',
      email: 'test@example.com',
      appRole: AppUserRole.standardUser,
      dashboardRole: DashboardUserRole.none,
      createdAt: DateTime.utc(2023),
      feedActionStatus: {
        FeedActionType.linkAccount: UserFeedActionStatus(
          lastShownAt: DateTime.utc(2023, 1, 2),
          isCompleted: false,
        ),
        FeedActionType.upgrade: const UserFeedActionStatus(isCompleted: false),
        FeedActionType.rateApp: const UserFeedActionStatus(isCompleted: false),
        FeedActionType.enableNotifications: const UserFeedActionStatus(
          isCompleted: false,
        ),
        FeedActionType.followTopics: const UserFeedActionStatus(
          isCompleted: false,
        ),
        FeedActionType.followSources: const UserFeedActionStatus(
          isCompleted: false,
        ),
      },
    );
    const testToken = 'sample-jwt-token';

    // Sample AuthSuccessResponse instance
    final authSuccessResponse = AuthSuccessResponse(
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
          throwsA(isA<CheckedFromJsonException>()),
        );

        // Missing 'token'
        final jsonMissingToken = {'user': testUser.toJson()};
        expect(
          () => AuthSuccessResponse.fromJson(jsonMissingToken),
          throwsA(isA<CheckedFromJsonException>()),
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
          throwsA(isA<CheckedFromJsonException>()),
        );

        // Incorrect type for 'token'
        final jsonWrongTokenType = {
          'user': testUser.toJson(),
          'token': 12345, // Should be String
        };
        expect(
          () => AuthSuccessResponse.fromJson(jsonWrongTokenType),
          throwsA(isA<CheckedFromJsonException>()),
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
        final updatedUser = User(
          id: 'user-456',
          email: 'updated@example.com',
          appRole: AppUserRole.guestUser,
          dashboardRole: DashboardUserRole.none,
          createdAt: DateTime.utc(2023),
          feedActionStatus: const {},
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
        final updatedUser = User(
          id: 'user-789',
          email: 'another@example.com',
          appRole: AppUserRole.guestUser,
          dashboardRole: DashboardUserRole.none,
          createdAt: DateTime.utc(2023),
          feedActionStatus: const {},
        );
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
        final response1 = AuthSuccessResponse(user: testUser, token: testToken);
        final response2 = AuthSuccessResponse(user: testUser, token: testToken);
        expect(response1, equals(response2));
        expect(response1.hashCode, equals(response2.hashCode));
      });

      test('should not equate instances with different users', () {
        final differentUser = User(
          id: 'diff-user',
          email: 'diff@example.com',
          appRole: AppUserRole.premiumUser,
          dashboardRole: DashboardUserRole.admin,
          createdAt: DateTime.utc(2023),
          feedActionStatus: const {},
        );
        final response1 = AuthSuccessResponse(user: testUser, token: testToken);
        final response2 = AuthSuccessResponse(
          user: differentUser,
          token: testToken,
        );
        expect(response1, isNot(equals(response2)));
        expect(response1.hashCode, isNot(equals(response2.hashCode)));
      });

      test('should not equate instances with different tokens', () {
        const differentToken = 'different-token';
        final response1 = AuthSuccessResponse(user: testUser, token: testToken);
        final response2 = AuthSuccessResponse(
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
