import 'package:ht_shared/ht_shared.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:test/test.dart';
import 'package:uuid/uuid.dart';

void main() {
  group('FeedAction', () {
    late String testId;

    setUp(() {
      testId = const Uuid().v4();
    });

    FeedAction createSubject({
      String? id,
      String title = 'Test Title',
      FeedActionType feedActionType = FeedActionType.linkAccount,
      String description = 'Test Description',
      String callToActionText = 'Test CTA',
      String callToActionUrl = 'https://test.com',
    }) {
      return FeedAction(
        id: id ?? const Uuid().v4(),
        title: title,
        feedActionType: feedActionType,
        description: description,
        callToActionText: callToActionText,
        callToActionUrl: callToActionUrl,
      );
    }

    test('can be instantiated', () {
      final instance = createSubject();
      expect(instance, isNotNull);
      expect(instance.id, isA<String>());
      expect(instance.type, 'feed_action');
    });

    test('uses provided id if not null', () {
      final instance = createSubject(id: testId);
      expect(instance.id, testId);
    });

    test('generates UUID v4 if id is null', () {
      final instance = createSubject();
      expect(instance.id, isNotNull);
      expect(instance.id.length, 36); // UUID v4 length
    });

    test('supports value equality', () {
      final instanceA = createSubject(id: testId);
      final instanceB = createSubject(id: testId);
      final instanceC = createSubject(id: 'another-id');

      expect(instanceA, equals(instanceB));
      expect(instanceA, isNot(equals(instanceC)));
    });

    test('props are correct', () {
      final instance = createSubject(
        id: testId,
        title: 'Title',
        description: 'Description',
        feedActionType: FeedActionType.upgrade, // Changed from rateApp
        callToActionText: 'Click Me',
        callToActionUrl: 'https://cta.com',
      );

      expect(instance.props, [
        testId,
        'Title',
        'Description',
        FeedActionType.upgrade, // Changed from rateApp
        'Click Me',
        'https://cta.com',
        'feed_action',
      ]);
    });

    group('fromJson', () {
      test('returns correct FeedAction object', () {
        final json = <String, dynamic>{
          'id': testId,
          'title': 'Sign Up Now',
          'description': 'Create an account to save preferences.',
          'feedActionType': 'linkAccount',
          'callToActionText': 'Sign Up',
          'callToActionUrl': 'https://example.com/signup',
          'type': 'feed_action',
        };

        final instance = FeedAction.fromJson(json);

        expect(instance.id, testId);
        expect(instance.title, 'Sign Up Now');
        expect(instance.description, 'Create an account to save preferences.');
        expect(instance.feedActionType, FeedActionType.linkAccount);
        expect(instance.callToActionText, 'Sign Up');
        expect(instance.callToActionUrl, 'https://example.com/signup');
        expect(instance.type, 'feed_action');
      });

      test('handles all fields present', () {
        final json = <String, dynamic>{
          'id': testId,
          'title': 'Simple Title',
          'description': 'Simple Description',
          'feedActionType': 'upgrade',
          'callToActionText': 'Simple CTA',
          'callToActionUrl': 'https://simple.com',
          'type': 'feed_action',
        };

        final instance = FeedAction.fromJson(json);

        expect(instance.id, testId);
        expect(instance.title, 'Simple Title');
        expect(instance.description, 'Simple Description');
        expect(instance.feedActionType, FeedActionType.upgrade);
        expect(instance.callToActionText, 'Simple CTA');
        expect(instance.callToActionUrl, 'https://simple.com');
      });

      test('handles unknown feedActionType gracefully (null)', () {
        final json = <String, dynamic>{
          'id': testId,
          'title': 'Unknown Type',
          'feedActionType': 'unknown_type', // Unknown value
          'type': 'feed_action',
        };

        expect(
          () => FeedAction.fromJson(json),
          throwsA(isA<CheckedFromJsonException>()),
        );
      });
    });

    group('toJson', () {
      test('returns correct JSON map', () {
        final instance = createSubject(
          id: testId,
          title: 'Sign Up Now',
          description: 'Create an account to save preferences.',
          callToActionText: 'Sign Up',
          callToActionUrl: 'https://example.com/signup',
        );

        final json = instance.toJson();

        expect(json, <String, dynamic>{
          'id': testId,
          'title': 'Sign Up Now',
          'description': 'Create an account to save preferences.',
          'feedActionType': 'linkAccount',
          'callToActionText': 'Sign Up',
          'callToActionUrl': 'https://example.com/signup',
          'type': 'feed_action',
        });
      });

      test('returns correct JSON map with all fields', () {
        final instance = createSubject(
          id: testId,
          title: 'Simple Title',
          description: 'Simple Description',
          callToActionText: 'Simple CTA',
          callToActionUrl: 'https://simple.com',
          feedActionType: FeedActionType.upgrade,
        );

        final json = instance.toJson();

        expect(json, <String, dynamic>{
          'id': testId,
          'title': 'Simple Title',
          'description': 'Simple Description',
          'feedActionType': 'upgrade',
          'callToActionText': 'Simple CTA',
          'callToActionUrl': 'https://simple.com',
          'type': 'feed_action',
        });
      });
    });

    group('copyWith', () {
      test('returns a new instance with updated values', () {
        final original = createSubject(
          id: testId,
          title: 'Original Title',
          description: 'Original Description',
          callToActionText: 'Original CTA',
          callToActionUrl: 'original.com',
        );

        final copied = original.copyWith(
          title: 'New Title',
          description: 'New Description',
          feedActionType: FeedActionType.upgrade,
          callToActionText: 'New CTA',
          callToActionUrl: 'new.com',
        );

        expect(copied, isNot(equals(original)));
        expect(copied.id, original.id); // ID should remain the same
        expect(copied.title, 'New Title');
        expect(copied.description, 'New Description');
        expect(copied.feedActionType, FeedActionType.upgrade);
        expect(copied.callToActionText, 'New CTA');
        expect(copied.callToActionUrl, 'new.com');
      });

      test('returns a new instance with same values if no changes', () {
        final original = createSubject(id: testId);
        final copied = original.copyWith();
        expect(copied, equals(original));
      });

      test('returns a new instance with same values if no changes', () {
        final original = createSubject(id: testId);
        final copied = original.copyWith();
        expect(copied, equals(original));
      });
    });
  });
}
