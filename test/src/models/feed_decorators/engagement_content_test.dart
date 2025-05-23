import 'package:ht_shared/ht_shared.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';
import 'package:uuid/uuid.dart';

class MockOpenExternalUrl extends Mock implements OpenExternalUrl {}

void main() {
  group('EngagementContent', () {
    late MockOpenExternalUrl mockAction;
    late String testId;

    setUp(() {
      mockAction = MockOpenExternalUrl();
      when(() => mockAction.type).thenReturn('open_external_url');
      when(() => mockAction.url).thenReturn('https://example.com');
      when(() => mockAction.toJson()).thenReturn({
        'type': 'open_external_url',
        'url': 'https://example.com',
      });
      testId = const Uuid().v4();
    });

    EngagementContent createSubject({
      String? id,
      String title = 'Test Title',
      EngagementContentType engagementContentType =
          EngagementContentType.signUp,
      String? description,
      String? callToActionText,
      String? callToActionUrl,
      FeedItemAction? action,
    }) {
      return EngagementContent(
        id: id,
        title: title,
        engagementContentType: engagementContentType,
        description: description,
        callToActionText: callToActionText,
        callToActionUrl: callToActionUrl,
        action: action ?? mockAction,
      );
    }

    test('can be instantiated', () {
      final instance = createSubject();
      expect(instance, isNotNull);
      expect(instance.id, isA<String>());
      expect(instance.type, 'engagement_content');
      expect(instance.action, mockAction);
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
        engagementContentType: EngagementContentType.feedback,
        callToActionText: 'Click Me',
        callToActionUrl: 'https://cta.com',
      );

      expect(
        instance.props,
        [
          testId,
          'Title',
          'Description',
          EngagementContentType.feedback,
          'Click Me',
          'https://cta.com',
          'engagement_content',
          mockAction,
        ],
      );
    });

    group('fromJson', () {
      test('returns correct EngagementContent object', () {
        final json = <String, dynamic>{
          'id': testId,
          'title': 'Sign Up Now',
          'description': 'Create an account to save preferences.',
          'engagement_content_type': 'sign_up',
          'call_to_action_text': 'Sign Up',
          'call_to_action_url': 'https://example.com/signup',
          'type': 'engagement_content',
          'action': {
            'type': 'open_external_url',
            'url': 'https://example.com/action',
          },
        };

        final instance = EngagementContent.fromJson(json);

        expect(instance.id, testId);
        expect(instance.title, 'Sign Up Now');
        expect(instance.description, 'Create an account to save preferences.');
        expect(instance.engagementContentType, EngagementContentType.signUp);
        expect(instance.callToActionText, 'Sign Up');
        expect(instance.callToActionUrl, 'https://example.com/signup');
        expect(instance.type, 'engagement_content');
        expect(instance.action, isA<OpenExternalUrl>());
        expect(
          (instance.action as OpenExternalUrl).url,
          'https://example.com/action',
        );
      });

      test('handles null optional fields', () {
        final json = <String, dynamic>{
          'id': testId,
          'title': 'Simple Title',
          'engagement_content_type': 'feedback',
          'type': 'engagement_content',
          'action': {
            'type': 'open_external_url',
            'url': 'https://example.com/action',
          },
        };

        final instance = EngagementContent.fromJson(json);

        expect(instance.id, testId);
        expect(instance.title, 'Simple Title');
        expect(instance.description, isNull);
        expect(instance.engagementContentType, EngagementContentType.feedback);
        expect(instance.callToActionText, isNull);
        expect(instance.callToActionUrl, isNull);
      });

      test('handles unknown engagementContentType gracefully (null)', () {
        final json = <String, dynamic>{
          'id': testId,
          'title': 'Unknown Type',
          'engagement_content_type': 'unknown_type', // Unknown value
          'type': 'engagement_content',
          'action': {
            'type': 'open_external_url',
            'url': 'https://example.com/action',
          },
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
          'engagement_content_type': 'sign_up',
          'call_to_action_text': 'Sign Up',
          'call_to_action_url': 'https://example.com/signup',
          'type': 'engagement_content',
          'action': {
            'type': 'open_external_url',
            'url': 'https://example.com',
          },
        });
      });

      test('handles null optional fields', () {
        final instance = createSubject(
          id: testId,
          title: 'Simple Title',
          engagementContentType: EngagementContentType.feedback,
        );

        final json = instance.toJson();

        expect(json, <String, dynamic>{
          'id': testId,
          'title': 'Simple Title',
          'engagement_content_type': 'feedback',
          'type': 'engagement_content',
          'action': {
            'type': 'open_external_url',
            'url': 'https://example.com',
          },
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

        const updatedAction = OpenExternalUrl(url: 'https://new.com');

        final copied = original.copyWith(
          title: 'New Title',
          description: 'New Description',
          engagementContentType: EngagementContentType.upgrade,
          callToActionText: 'New CTA',
          callToActionUrl: 'new.com',
          action: updatedAction,
        );

        expect(copied, isNot(equals(original)));
        expect(copied.id, original.id); // ID should remain the same
        expect(copied.title, 'New Title');
        expect(copied.description, 'New Description');
        expect(copied.engagementContentType, EngagementContentType.upgrade);
        expect(copied.callToActionText, 'New CTA');
        expect(copied.callToActionUrl, 'new.com');
        expect(copied.action, updatedAction);
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

        final copied = original.copyWith(
          description: null,
          callToActionText: null,
          callToActionUrl: null,
        );

        expect(copied.description, isNull);
        expect(copied.callToActionText, isNull);
        expect(copied.callToActionUrl, isNull);
      });
    });
  });
}
