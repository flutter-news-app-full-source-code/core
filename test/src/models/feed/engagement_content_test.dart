import 'package:ht_shared/src/models/content_type.dart';
import 'package:ht_shared/src/models/feed/engagement_content.dart';
import 'package:ht_shared/src/models/feed/engagement_content_type.dart';
import 'package:ht_shared/src/models/feed/feed_item_action.dart';
import 'package:test/test.dart';
import 'package:uuid/uuid.dart';

void main() {
  group('EngagementContent', () {
    const testId = 'test-engagement-id';
    const testTitle = 'Test Engagement Title';
    const testDescription = 'This is a test description.';
    const testEngagementContentType = EngagementContentType.signUp;
    const testCallToActionText = 'Sign Up Now!';
    const testCallToActionUrl = 'http://example.com/signup';
    final defaultAction = OpenExternalUrl(url: 'http://default.com');

    EngagementContent createSubject({
      required FeedItemAction action, String? id,
      String title = testTitle,
      String? description = testDescription,
      EngagementContentType engagementContentType = testEngagementContentType,
      String? callToActionText = testCallToActionText,
      String? callToActionUrl = testCallToActionUrl,
    }) {
      return EngagementContent(
        id: id,
        title: title,
        description: description,
        engagementContentType: engagementContentType,
        callToActionText: callToActionText,
        callToActionUrl: callToActionUrl,
        action: action,
      );
    }

    group('constructor', () {
      test('generates id when not provided', () {
        final content = createSubject(action: defaultAction);
        expect(content.id, isA<String>());
        expect(Uuid.isValidUUID(fromString: content.id), isTrue);
      });

      test('uses provided id', () {
        final content = createSubject(id: testId, action: defaultAction);
        expect(content.id, testId);
      });

      test('initializes all properties correctly', () {
        final content = createSubject(action: defaultAction);
        expect(content.title, testTitle);
        expect(content.description, testDescription);
        expect(content.engagementContentType, testEngagementContentType);
        expect(content.callToActionText, testCallToActionText);
        expect(content.callToActionUrl, testCallToActionUrl);
        expect(content.action, defaultAction);
        expect(content.type, 'engagement_content');
      });
    });

    group('copyWith', () {
      test('returns a new instance with updated fields', () {
        const newTitle = 'New Title';
        const newDescription = 'New Description';
        const newEngagementContentType = EngagementContentType.feedback;
        const newCallToActionText = 'Give Feedback';
        const newCallToActionUrl = 'http://example.com/feedback';
        final newAction = OpenInternalContent(
          contentId: 'feedback-id',
          contentType: ContentType.category,
        );

        final originalContent = createSubject(action: defaultAction);
        final updatedContent = originalContent.copyWith(
          title: newTitle,
          description: newDescription,
          engagementContentType: newEngagementContentType,
          callToActionText: newCallToActionText,
          callToActionUrl: newCallToActionUrl,
          action: newAction,
        );

        expect(updatedContent.id, originalContent.id);
        expect(updatedContent.title, newTitle);
        expect(updatedContent.description, newDescription);
        expect(updatedContent.engagementContentType, newEngagementContentType);
        expect(updatedContent.callToActionText, newCallToActionText);
        expect(updatedContent.callToActionUrl, newCallToActionUrl);
        expect(updatedContent.action, newAction);
        expect(updatedContent.type, originalContent.type);
      });

      test('returns an identical copy if no updates provided', () {
        final originalContent = createSubject(action: defaultAction);
        final copiedContent = originalContent.copyWith();
        expect(copiedContent, originalContent);
        expect(identical(copiedContent, originalContent), isFalse);
      });
    });

    group('toJson', () {
      test('serializes full EngagementContent object to JSON', () {
        final content = createSubject(action: defaultAction);
        final json = content.toJson();

        expect(json, <String, dynamic>{
          'id': content.id,
          'title': testTitle,
          'description': testDescription,
          'engagementContentType': testEngagementContentType.name,
          'callToActionText': testCallToActionText,
          'callToActionUrl': testCallToActionUrl,
          'type': 'engagement_content',
          'action': defaultAction.toJson(),
        });
      });

      test('omits null optional fields from JSON', () {
        final content = createSubject(
          description: null,
          callToActionText: null,
          callToActionUrl: null,
          action: defaultAction,
        );
        final json = content.toJson();

        expect(json.containsKey('description'), isFalse);
        expect(json.containsKey('callToActionText'), isFalse);
        expect(json.containsKey('callToActionUrl'), isFalse);
      });
    });

    group('fromJson', () {
      test('deserializes full JSON to EngagementContent object', () {
        final json = <String, dynamic>{
          'id': testId,
          'title': testTitle,
          'description': testDescription,
          'engagementContentType': testEngagementContentType.name,
          'callToActionText': testCallToActionText,
          'callToActionUrl': testCallToActionUrl,
          'type': 'engagement_content',
          'action': defaultAction.toJson(),
        };
        final content = EngagementContent.fromJson(json);

        expect(content.id, testId);
        expect(content.title, testTitle);
        expect(content.description, testDescription);
        expect(content.engagementContentType, testEngagementContentType);
        expect(content.callToActionText, testCallToActionText);
        expect(content.callToActionUrl, testCallToActionUrl);
        expect(content.action, defaultAction);
        expect(content.type, 'engagement_content');
      });

      test('deserializes JSON with missing optional fields', () {
        final json = <String, dynamic>{
          'id': testId,
          'title': testTitle,
          'engagementContentType': testEngagementContentType.name,
          'type': 'engagement_content',
          'action': defaultAction.toJson(),
        };
        final content = EngagementContent.fromJson(json);

        expect(content.description, isNull);
        expect(content.callToActionText, isNull);
        expect(content.callToActionUrl, isNull);
      });

      test('deserializes JSON with unknown engagementContentType gracefully',
          () {
        final json = <String, dynamic>{
          'id': testId,
          'title': testTitle,
          'engagementContentType': 'unknown_type',
          'type': 'engagement_content',
          'action': defaultAction.toJson(),
        };
        final content = EngagementContent.fromJson(json);
        expect(content.engagementContentType, isNull);
      });
    });

    group('Equatable', () {
      test('instances with same properties are equal', () {
        final content1 = createSubject(id: '1', action: defaultAction);
        final content2 = createSubject(id: '1', action: defaultAction);
        expect(content1, content2);
      });

      test('instances with different properties are not equal', () {
        final content1 = createSubject(id: '1', action: defaultAction);
        final content2 = createSubject(id: '2', action: defaultAction);
        expect(content1, isNot(equals(content2)));
      });

      test('props list contains all relevant fields', () {
        final content = createSubject(action: defaultAction);
        expect(content.props, [
          content.id,
          content.title,
          content.description,
          content.engagementContentType,
          content.callToActionText,
          content.callToActionUrl,
          content.type,
          content.action,
        ]);
      });
    });
  });
}
