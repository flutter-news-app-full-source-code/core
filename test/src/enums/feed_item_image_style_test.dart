import 'package:core/src/enums/feed_item_image_style.dart';
import 'package:test/test.dart';

void main() {
  group('FeedItemImageStyle', () {
    test('has correct values', () {
      expect(
        FeedItemImageStyle.values,
        containsAll([
          FeedItemImageStyle.hidden,
          FeedItemImageStyle.smallThumbnail,
          FeedItemImageStyle.largeThumbnail,
        ]),
      );
    });

    test('has correct string values', () {
      expect(FeedItemImageStyle.hidden.name, 'hidden');
      expect(FeedItemImageStyle.smallThumbnail.name, 'smallThumbnail');
      expect(FeedItemImageStyle.largeThumbnail.name, 'largeThumbnail');
    });

    test('can be created from string values', () {
      expect(
        FeedItemImageStyle.values.byName('hidden'),
        FeedItemImageStyle.hidden,
      );
      expect(
        FeedItemImageStyle.values.byName('smallThumbnail'),
        FeedItemImageStyle.smallThumbnail,
      );
      expect(
        FeedItemImageStyle.values.byName('largeThumbnail'),
        FeedItemImageStyle.largeThumbnail,
      );
    });
  });
}
