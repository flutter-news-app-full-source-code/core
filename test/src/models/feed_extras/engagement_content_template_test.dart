import 'package:ht_shared/ht_shared.dart';
import 'package:test/test.dart';

void main() {
  group('EngagementContentTemplate', () {
    EngagementContentTemplate createSubject({
      EngagementTemplateType type = EngagementTemplateType.rateApp,
      String title = 'Default Title', // Made non-nullable with a default
      String? description,
      String? callToActionText,
    }) {
      return EngagementContentTemplate(
        type: type,
        title: title, // Now always non-nullable
        description: description,
        callToActionText: callToActionText,
      );
    }

    test('can be instantiated', () {
      final instance = createSubject();
      expect(instance, isNotNull);
      expect(instance.type, EngagementTemplateType.rateApp);
    });

    test('supports value equality', () {
      final instanceA = createSubject(title: 'Title A');
      final instanceB = createSubject(title: 'Title A');
      final instanceC = createSubject(
        type: EngagementTemplateType.linkAccount,
        title: 'Title C',
      );

      expect(instanceA, equals(instanceB));
      expect(instanceA, isNot(equals(instanceC)));
    });

    test('props are correct', () {
      final instance = createSubject(
        type: EngagementTemplateType.upgradeToPremium,
        title: 'Upgrade Now',
        description: 'Unlock premium features.',
        callToActionText: 'Upgrade',
      );

      expect(
        instance.props,
        [
          EngagementTemplateType.upgradeToPremium,
          'Upgrade Now',
          'Unlock premium features.',
          'Upgrade',
        ],
      );
    });

    group('fromJson', () {
      test('returns correct EngagementContentTemplate object', () {
        final json = <String, dynamic>{
          'type': 'rate_app',
          'title': 'Rate Our App',
          'description': 'Let us know what you think!',
          'call_to_action_text': 'Rate Now',
        };

        final instance = EngagementContentTemplate.fromJson(json);

        expect(instance.type, EngagementTemplateType.rateApp);
        expect(instance.title, 'Rate Our App');
        expect(instance.description, 'Let us know what you think!');
        expect(instance.callToActionText, 'Rate Now');
      });

      test('handles null optional fields', () {
        final json = <String, dynamic>{
          'type': 'link_account',
          'title': 'Link Your Account Now', // Provide required title
        };

        final instance = EngagementContentTemplate.fromJson(json);

        expect(instance.type, EngagementTemplateType.linkAccount);
        expect(
          instance.title,
          'Link Your Account Now',
        ); // Expect the provided title
        expect(instance.description, isNull);
        expect(instance.callToActionText, isNull);
      });
    });

    group('toJson', () {
      test('returns correct JSON map', () {
        final instance = createSubject(
          type: EngagementTemplateType.completeProfile,
          title: 'Complete Profile',
          description: 'Add more details to your profile.',
          callToActionText: 'Go to Profile',
        );

        final json = instance.toJson();

        expect(json, <String, dynamic>{
          'type': 'complete_profile',
          'title': 'Complete Profile',
          'description': 'Add more details to your profile.',
          'call_to_action_text': 'Go to Profile',
        });
      });

      test('handles null optional fields', () {
        final instance = createSubject(
          type: EngagementTemplateType.exploreNewFeature,
          title: 'New Feature!',
        ); // description and callToActionText are null

        final json = instance.toJson();

        expect(json, <String, dynamic>{
          'type': 'explore_new_feature',
          'title': 'New Feature!',
          // Null fields should be omitted by includeIfNull: false
        });
      });
    });
  });
}
