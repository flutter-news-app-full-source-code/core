import 'package:ht_shared/src/enums/content_type.dart';
import 'package:test/test.dart';

void main() {
  group('ContentType', () {
    test('has correct string values for JSON serialization', () {
      expect(ContentType.headline.name, 'headline');
      expect(ContentType.topic.name, 'topic');
      expect(ContentType.source.name, 'source');
      expect(ContentType.country.name, 'country');
    });

    test('can be created from string values', () {
      expect(ContentType.values.byName('headline'), ContentType.headline);
      expect(ContentType.values.byName('topic'), ContentType.topic);
      expect(ContentType.values.byName('source'), ContentType.source);
      expect(ContentType.values.byName('country'), ContentType.country);
    });

    test('has correct toString representation', () {
      expect(ContentType.headline.toString(), 'ContentType.headline');
      expect(ContentType.topic.toString(), 'ContentType.topic');
      expect(ContentType.source.toString(), 'ContentType.source');
      expect(ContentType.country.toString(), 'ContentType.country');
    });
  });
}
