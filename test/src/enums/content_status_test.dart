import 'package:core/src/enums/content_status.dart';
import 'package:test/test.dart';

void main() {
  group('ContentStatus', () {
    test('has correct values', () {
      expect(
        ContentStatus.values,
        containsAll([
          ContentStatus.active,
          ContentStatus.draft,
          ContentStatus.archived,
        ]),
      );
    });

    test('has correct string values', () {
      expect(ContentStatus.active.name, 'active');
      expect(ContentStatus.draft.name, 'draft');
      expect(ContentStatus.archived.name, 'archived');
    });

    test('can be created from string values', () {
      expect(ContentStatus.values.byName('active'), ContentStatus.active);
      expect(ContentStatus.values.byName('draft'), ContentStatus.draft);
      expect(ContentStatus.values.byName('archived'), ContentStatus.archived);
    });
  });
}
