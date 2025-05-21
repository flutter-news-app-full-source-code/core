import 'package:ht_shared/src/models/feed/source_type.dart';
import 'package:test/test.dart';

void main() {
  group('SourceType', () {
    test('has correct string values for JSON serialization', () {
      expect(SourceType.newsAgency.name, 'newsAgency');
      expect(SourceType.localNewsOutlet.name, 'localNewsOutlet');
      expect(SourceType.nationalNewsOutlet.name, 'nationalNewsOutlet');
      expect(
          SourceType.internationalNewsOutlet.name, 'internationalNewsOutlet',);
      expect(SourceType.specializedPublisher.name, 'specializedPublisher');
      expect(SourceType.blog.name, 'blog');
      expect(SourceType.governmentSource.name, 'governmentSource');
      expect(SourceType.aggregator.name, 'aggregator');
      expect(SourceType.other.name, 'other');
    });

    test('can be created from string values', () {
      expect(SourceType.values.byName('newsAgency'), SourceType.newsAgency);
      expect(
        SourceType.values.byName('localNewsOutlet'),
        SourceType.localNewsOutlet,
      );
      expect(
        SourceType.values.byName('nationalNewsOutlet'),
        SourceType.nationalNewsOutlet,
      );
      expect(
        SourceType.values.byName('internationalNewsOutlet'),
        SourceType.internationalNewsOutlet,
      );
      expect(
        SourceType.values.byName('specializedPublisher'),
        SourceType.specializedPublisher,
      );
      expect(SourceType.values.byName('blog'), SourceType.blog);
      expect(
        SourceType.values.byName('governmentSource'),
        SourceType.governmentSource,
      );
      expect(SourceType.values.byName('aggregator'), SourceType.aggregator);
      expect(SourceType.values.byName('other'), SourceType.other);
    });

    test('has correct toString representation', () {
      expect(SourceType.newsAgency.toString(), 'SourceType.newsAgency');
      expect(
        SourceType.localNewsOutlet.toString(),
        'SourceType.localNewsOutlet',
      );
      expect(
        SourceType.nationalNewsOutlet.toString(),
        'SourceType.nationalNewsOutlet',
      );
      expect(
        SourceType.internationalNewsOutlet.toString(),
        'SourceType.internationalNewsOutlet',
      );
      expect(
        SourceType.specializedPublisher.toString(),
        'SourceType.specializedPublisher',
      );
      expect(SourceType.blog.toString(), 'SourceType.blog');
      expect(
        SourceType.governmentSource.toString(),
        'SourceType.governmentSource',
      );
      expect(SourceType.aggregator.toString(), 'SourceType.aggregator');
      expect(SourceType.other.toString(), 'SourceType.other');
    });
  });
}
