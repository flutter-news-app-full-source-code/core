import 'package:core/src/enums/headline_image_style.dart';
import 'package:test/test.dart';

void main() {
  group('HeadlineImageStyle', () {
    test('has correct values', () {
      expect(
        HeadlineImageStyle.values,
        containsAll([
          HeadlineImageStyle.hidden,
          HeadlineImageStyle.smallThumbnail,
          HeadlineImageStyle.largeThumbnail,
        ]),
      );
    });

    test('has correct string values', () {
      expect(HeadlineImageStyle.hidden.name, 'hidden');
      expect(HeadlineImageStyle.smallThumbnail.name, 'smallThumbnail');
      expect(HeadlineImageStyle.largeThumbnail.name, 'largeThumbnail');
    });

    test('can be created from string values', () {
      expect(
        HeadlineImageStyle.values.byName('hidden'),
        HeadlineImageStyle.hidden,
      );
      expect(
        HeadlineImageStyle.values.byName('smallThumbnail'),
        HeadlineImageStyle.smallThumbnail,
      );
      expect(
        HeadlineImageStyle.values.byName('largeThumbnail'),
        HeadlineImageStyle.largeThumbnail,
      );
    });
  });
}
