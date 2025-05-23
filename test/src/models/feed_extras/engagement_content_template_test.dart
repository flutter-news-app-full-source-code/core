import 'package:ht_shared/ht_shared.dart';
import 'package:test/test.dart';

void main() {
  group('EngagementContentTemplate', () {
    EngagementContentTemplate createSubject({
      EngagementTemplateType type = EngagementTemplateType.rateApp,
      String title = 'Test Title',
      String? description,
      String? callToActionText,
    }) {
      return EngagementContentTemplate(
        type: type,
        title: title,
        description: description,
        callToActionText: callToActionText,
      );
    }

    test('can be instantiated', () {
      final instance = createSubject();
      expect(instance, isNotNull);
      expect(instance.type, EngagementTemplateType.rateApp);
      expect(instance.title, 'Test Title');
    });

    test('supports value equality', () {
      final instanceA = createSubject(
        title: 'Title A',
        description: 'Desc A',
        callToActionText: 'CTA A',
      );
      final instanceB = createSubject(
        title: 'Title A',
        description: 'Desc A',
        callToActionText: 'CTA A',
      );
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
        title: 'Upgrade',
        description: 'Get more features',
        callToActionText: 'Upgrade Now',
      );

      expect(
        instance.props,
        [
          EngagementTemplateType.upgradeToPremium,
          'Upgrade',
          'Get more features',
          'Upgrade Now',
        ],
      );
    });

    group('fromJson', () {
      test('returns correct EngagementContentTemplate object', () {
        final json = <String, dynamic>{
          'type': 'rate-app',
          'title': 'Rate Our App',
          'description': 'Help us improve!',
          'callToActionText': 'Rate Now',
        };

        final instance = EngagementContentTemplate.fromJson(json);

        expect(instance.type, EngagementTemplateType.rateApp);
        expect(instance.title, 'Rate Our App');
        expect(instance.description, 'Help us improve!');
        expect(instance.callToActionText, 'Rate Now');
      });

      test('handles null optional fields', () {
        final json = <String, dynamic>{
          'type': 'link-account',
          'title': 'Link Your Account',
        };

        final instance = EngagementContentTemplate.fromJson(json);

        expect(instance.type, EngagementTemplateType.linkAccount);
        expect(instance.title, 'Link Your Account');
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
          'type': 'complete-profile',
          'title': 'Complete Profile',
          'description': 'Add more details to your profile.',
          'callToActionText': 'Go to Profile',
        });
      });

      test('handles null optional fields', () {
        final instance = createSubject(
          type: EngagementTemplateType.exploreNewFeature,
          title: 'New Feature!',
        );

        final json = instance.toJson();

        expect(json, <String, dynamic>{
          'type': 'explore-new-feature',
          'title': 'New Feature!',
        });
      });
    });
  });
}
