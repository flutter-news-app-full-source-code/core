import 'package:core/src/enums/headline_report_reason.dart';
import 'package:test/test.dart';

void main() {
  group('HeadlineReportReason', () {
    test('has correct values', () {
      expect(
        HeadlineReportReason.values,
        containsAll([
          HeadlineReportReason.misinformationOrFakeNews,
          HeadlineReportReason.clickbaitTitle,
          HeadlineReportReason.offensiveOrHateSpeech,
          HeadlineReportReason.spamOrScam,
          HeadlineReportReason.brokenLink,
          HeadlineReportReason.paywalled,
        ]),
      );
    });

    test('has correct string values', () {
      expect(
        HeadlineReportReason.misinformationOrFakeNews.name,
        'misinformationOrFakeNews',
      );
      expect(HeadlineReportReason.clickbaitTitle.name, 'clickbaitTitle');
      expect(
        HeadlineReportReason.offensiveOrHateSpeech.name,
        'offensiveOrHateSpeech',
      );
      expect(HeadlineReportReason.spamOrScam.name, 'spamOrScam');
      expect(HeadlineReportReason.brokenLink.name, 'brokenLink');
      expect(HeadlineReportReason.paywalled.name, 'paywalled');
    });

    test('can be created from string values', () {
      expect(
        HeadlineReportReason.values.byName('misinformationOrFakeNews'),
        HeadlineReportReason.misinformationOrFakeNews,
      );
      expect(
        HeadlineReportReason.values.byName('clickbaitTitle'),
        HeadlineReportReason.clickbaitTitle,
      );
    });
  });
}
