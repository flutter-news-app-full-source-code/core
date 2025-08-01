import 'package:core/src/enums/enums.dart';
import 'package:core/src/fixtures/fixture_ids.dart';
import 'package:core/src/models/entities/topic.dart';

/// A list of predefined topics for fixture data.
final topicsFixturesData = <Topic>[
  Topic(
    id: kTopicId1,
    name: 'Technology',
    description: 'News and updates from the world of technology.',
    iconUrl: 'https://example.com/icons/tech.png',
    createdAt: DateTime.parse('2023-01-01T10:00:00.000Z'),
    updatedAt: DateTime.parse('2023-01-01T10:00:00.000Z'),
    status: ContentStatus.active,
  ),
  Topic(
    id: kTopicId2,
    name: 'Sports',
    description: 'Latest scores, highlights, and news from sports.',
    iconUrl: 'https://example.com/icons/sports.png',
    createdAt: DateTime.parse('2023-01-02T11:00:00.000Z'),
    updatedAt: DateTime.parse('2023-01-02T11:00:00.000Z'),
    status: ContentStatus.active,
  ),
  Topic(
    id: kTopicId3,
    name: 'Politics',
    description: 'Updates on political events and government policies.',
    iconUrl: 'https://example.com/icons/politics.png',
    createdAt: DateTime.parse('2023-01-03T12:00:00.000Z'),
    updatedAt: DateTime.parse('2023-01-03T12:00:00.000Z'),
    status: ContentStatus.active,
  ),
  Topic(
    id: kTopicId4,
    name: 'Science',
    description: 'Discoveries and breakthroughs in scientific research.',
    iconUrl: 'https://example.com/icons/science.png',
    createdAt: DateTime.parse('2023-01-04T13:00:00.000Z'),
    updatedAt: DateTime.parse('2023-01-04T13:00:00.000Z'),
    status: ContentStatus.active,
  ),
  Topic(
    id: kTopicId5,
    name: 'Health',
    description: 'Information and advice on health and wellness.',
    iconUrl: 'https://example.com/icons/health.png',
    createdAt: DateTime.parse('2023-01-05T14:00:00.000Z'),
    updatedAt: DateTime.parse('2023-01-05T14:00:00.000Z'),
    status: ContentStatus.active,
  ),
  Topic(
    id: kTopicId6,
    name: 'Entertainment',
    description: 'News from movies, music, and pop culture.',
    iconUrl: 'https://example.com/icons/entertainment.png',
    createdAt: DateTime.parse('2023-01-06T15:00:00.000Z'),
    updatedAt: DateTime.parse('2023-01-06T15:00:00.000Z'),
    status: ContentStatus.active,
  ),
  Topic(
    id: kTopicId7,
    name: 'Business',
    description: 'Financial markets, economy, and corporate news.',
    iconUrl: 'https://example.com/icons/business.png',
    createdAt: DateTime.parse('2023-01-07T16:00:00.000Z'),
    updatedAt: DateTime.parse('2023-01-07T16:00:00.000Z'),
    status: ContentStatus.active,
  ),
  Topic(
    id: kTopicId8,
    name: 'Travel',
    description: 'Guides, tips, and news for travelers.',
    iconUrl: 'https://example.com/icons/travel.png',
    createdAt: DateTime.parse('2023-01-08T17:00:00.000Z'),
    updatedAt: DateTime.parse('2023-01-08T17:00:00.000Z'),
    status: ContentStatus.active,
  ),
  Topic(
    id: kTopicId9,
    name: 'Food',
    description: 'Recipes, culinary trends, and food industry news.',
    iconUrl: 'https://example.com/icons/food.png',
    createdAt: DateTime.parse('2023-01-09T18:00:00.000Z'),
    updatedAt: DateTime.parse('2023-01-09T18:00:00.000Z'),
    status: ContentStatus.active,
  ),
  Topic(
    id: kTopicId10,
    name: 'Education',
    description: 'Developments in education and learning.',
    iconUrl: 'https://example.com/icons/education.png',
    createdAt: DateTime.parse('2023-01-10T19:00:00.000Z'),
    updatedAt: DateTime.parse('2023-01-10T19:00:00.000Z'),
    status: ContentStatus.active,
  ),
];
