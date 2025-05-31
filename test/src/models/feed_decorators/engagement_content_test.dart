import 'package:ht_shared/ht_shared.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';
import 'package:uuid/uuid.dart';

void main() {
  group('EngagementContent', () {
    late String testId;

    setUp(() {
      testId = const Uuid().v4();
    });

    EngagementContent createSubject({
      String? id,
      String title = 'Test Title',
      EngagementContentType engagementContentType =
          EngagementContentType.linkAccount,
      String? description,
      String? callToActionText,
      String? callToActionUrl,
    }) {
      return EngagementContent(
        id: id,
        title: title,
        engagementContentType: engagementContentType,
        description: description,
        callToActionText: callToActionText,
        callToActionUrl: callToActionUrl,
      );
    }

    test('can be instantiated', () {
      final instance = createSubject();
      expect(instance, isNotNull);
      expect(instance.id, isA<String>());
      expect(instance.type, 'engagement_content');
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
        engagementContentType:
            EngagementContentType.upgrade, // Changed from rateApp
        callToActionText: 'Click Me',
        callToActionUrl: 'https://cta.com',
      );

      expect(
        instance.props,
        [
          testId,
          'Title',
          'Description',
          EngagementContentType.upgrade, // Changed from rateApp
          'Click Me',
          'https://cta.com',
          'engagement_content',
        ],
      );
    });

    group('fromJson', () {
      test('returns correct EngagementContent object', () {
        final json = <String, dynamic>{
          'id': testId,
          'title': 'Sign Up Now',
          'description': 'Create an account to save preferences.',
          'engagement_content_type': 'link_account',
          'call_to_action_text': 'Sign Up',
          'call_to_action_url': 'https://example.com/signup',
          'type': 'engagement_content',
        };

        final instance = EngagementContent.fromJson(json);

        expect(instance.id, testId);
        expect(instance.title, 'Sign Up Now');
        expect(instance.description, 'Create an account to save preferences.');
        expect(instance.engagementContentType, EngagementContentType.linkAccount);
        expect(instance.callToActionText, 'Sign Up');
        expect(instance.callToActionUrl, 'https://example.com/signup');
        expect(instance.type, 'engagement_content');
      });

      test('handles null optional fields', () {
        final json = <String, dynamic>{
          'id': testId,
          'title': 'Simple Title',
          'engagement_content_type': 'upgrade', // Changed from rateApp
          'type': 'engagement_content',
        };

        final instance = EngagementContent.fromJson(json);

        expect(instance.id, testId);
        expect(instance.title, 'Simple Title');
        expect(instance.description, isNull);
        expect(instance.engagementContentType,
            EngagementContentType.upgrade); // Changed from rateApp
        expect(instance.callToActionText, isNull);
        expect(instance.callToActionUrl, isNull);
      });

      test('handles unknown engagementContentType gracefully (null)', () {
        final json = <String, dynamic>{
          'id': testId,
          'title': 'Unknown Type',
          'engagement_content_type': 'unknown_type', // Unknown value
          'type': 'engagement_content',
        };

        expect(
          () => EngagementContent.fromJson(json),
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
          'engagement_content_type': 'link_account',
          'call_to_action_text': 'Sign Up',
          'call_to_action_url': 'https://example.com/signup',
          'type': 'engagement_content',
        });
      });

      test('handles null optional fields', () {
        final instance = createSubject(
          id: testId,
          title: 'Simple Title',
          engagementContentType:
              EngagementContentType.upgrade, // Changed from rateApp
        );

        final json = instance.toJson();

        expect(json, <String, dynamic>{
          'id': testId,
          'title': 'Simple Title',
          'engagement_content_type': 'upgrade', // Changed from rateApp
          'type': 'engagement_content',
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
          engagementContentType: EngagementContentType.upgrade,
          callToActionText: 'New CTA',
          callToActionUrl: 'new.com',
        );

        expect(copied, isNot(equals(original)));
        expect(copied.id, original.id); // ID should remain the same
        expect(copied.title, 'New Title');
        expect(copied.description, 'New Description');
        expect(copied.engagementContentType, EngagementContentType.upgrade);
        expect(copied.callToActionText, 'New CTA');
        expect(copied.callToActionUrl, 'new.com');
      });

      test('returns a new instance with same values if no changes', () {
        final original = createSubject(id: testId);
        final copied = original.copyWith();
        expect(copied, equals(original));
      });

      test('can set optional fields to null', () {
        final original = createSubject(
          description: 'Has Description',
          callToActionText: 'Has CTA',
          callToActionUrl: 'hasurl.com',
        );

        final copied = original.copyWith();

        expect(copied.description, isNull);
        expect(copied.callToActionText, isNull);
        expect(copied.callToActionUrl, isNull);
      });
    });
  });
}
