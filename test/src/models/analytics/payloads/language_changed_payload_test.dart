import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('LanguageChangedPayload', () {
    const payload = LanguageChangedPayload(languageCode: 'en');

    group('toMap', () {
      test('should correctly serialize to a map', () {
        final map = payload.toMap();
        expect(map, {AnalyticsParameterKeys.languageCode: 'en'});
      });
    });

    group('Equatable', () {
      test('should equate two identical instances', () {
        const instance1 = payload;
        const instance2 = LanguageChangedPayload(languageCode: 'en');
        expect(instance1, equals(instance2));
      });

      test('should not equate instances with different properties', () {
        const instance1 = payload;
        const instance2 = LanguageChangedPayload(languageCode: 'ar');
        expect(instance1, isNot(equals(instance2)));
      });

      test('props list should contain all relevant fields', () {
        expect(payload.props, [payload.languageCode]);
      });
    });
  });
}
