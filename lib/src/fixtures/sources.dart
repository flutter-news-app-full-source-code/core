import 'package:core/src/enums/enums.dart';
import 'package:core/src/fixtures/countries.dart';
import 'package:core/src/fixtures/fixture_ids.dart';
import 'package:core/src/models/entities/source.dart';

/// A list of predefined sources for fixture data.
final sourcesFixturesData = <Source>[
  Source(
    id: kSourceId1,
    name: 'TechCrunch',
    description: 'Leading online publisher of technology news.',
    url: 'https://techcrunch.com',
    sourceType: SourceType.newsAgency,
    language: 'en',
    headquarters: countriesFixturesData[0], // United States
    createdAt: DateTime.parse('2023-01-01T10:00:00.000Z'),
    updatedAt: DateTime.parse('2023-01-01T10:00:00.000Z'),
    status: ContentStatus.active,
  ),
  Source(
    id: kSourceId2,
    name: 'BBC News',
    description: 'Breaking news, sport, TV, radio and a whole lot more.',
    url: 'https://www.bbc.com/news',
    sourceType: SourceType.newsAgency,
    language: 'en',
    headquarters: countriesFixturesData[2], // United Kingdom
    createdAt: DateTime.parse('2023-01-02T11:00:00.000Z'),
    updatedAt: DateTime.parse('2023-01-02T11:00:00.000Z'),
    status: ContentStatus.active,
  ),
  Source(
    id: kSourceId3,
    name: 'The New York Times',
    description: 'Breaking News, World News & Multimedia.',
    url: 'https://www.nytimes.com',
    sourceType: SourceType.newsAgency,
    language: 'en',
    headquarters: countriesFixturesData[0], // United States
    createdAt: DateTime.parse('2023-01-03T12:00:00.000Z'),
    updatedAt: DateTime.parse('2023-01-03T12:00:00.000Z'),
    status: ContentStatus.active,
  ),
  Source(
    id: kSourceId4,
    name: 'The Guardian',
    description:
        'Latest news, sport, business, comment and reviews from the Guardian.',
    url: 'https://www.theguardian.com',
    sourceType: SourceType.newsAgency,
    language: 'en',
    headquarters: countriesFixturesData[2], // United Kingdom
    createdAt: DateTime.parse('2023-01-04T13:00:00.000Z'),
    updatedAt: DateTime.parse('2023-01-04T13:00:00.000Z'),
    status: ContentStatus.active,
  ),
  Source(
    id: kSourceId5,
    name: 'CNN',
    description: 'Breaking News, Latest News and Videos.',
    url: 'https://edition.cnn.com',
    sourceType: SourceType.newsAgency,
    language: 'en',
    headquarters: countriesFixturesData[0], // United States
    createdAt: DateTime.parse('2023-01-05T14:00:00.000Z'),
    updatedAt: DateTime.parse('2023-01-05T14:00:00.000Z'),
    status: ContentStatus.active,
  ),
  Source(
    id: kSourceId6,
    name: 'Reuters',
    description: 'Business, financial, national and international news.',
    url: 'https://www.reuters.com',
    sourceType: SourceType.newsAgency,
    language: 'en',
    headquarters: countriesFixturesData[0], // United States
    createdAt: DateTime.parse('2023-01-06T15:00:00.000Z'),
    updatedAt: DateTime.parse('2023-01-06T15:00:00.000Z'),
    status: ContentStatus.active,
  ),
  Source(
    id: kSourceId7,
    name: 'Al Jazeera English',
    description:
        'News, analysis, and opinion from the Middle East and around the world.',
    url: 'https://www.aljazeera.com',
    sourceType: SourceType.newsAgency,
    language: 'en',
    headquarters:
        countriesFixturesData[0], // United States (assuming for simplicity, actual is Qatar)
    createdAt: DateTime.parse('2023-01-07T16:00:00.000Z'),
    updatedAt: DateTime.parse('2023-01-07T16:00:00.000Z'),
    status: ContentStatus.active,
  ),
  Source(
    id: kSourceId8,
    name: 'Xinhua News Agency',
    description: "Official press agency of the People's Republic of China.",
    url: 'http://www.xinhuanet.com/english/',
    sourceType: SourceType.newsAgency,
    language: 'en',
    headquarters: countriesFixturesData[7], // China
    createdAt: DateTime.parse('2023-01-08T17:00:00.000Z'),
    updatedAt: DateTime.parse('2023-01-08T17:00:00.000Z'),
    status: ContentStatus.active,
  ),
  Source(
    id: kSourceId9,
    name: 'The Times of India',
    description: 'Latest and Breaking News from India.',
    url: 'https://timesofindia.indiatimes.com/',
    sourceType: SourceType.newsAgency,
    language: 'en',
    headquarters: countriesFixturesData[8], // India
    createdAt: DateTime.parse('2023-01-09T18:00:00.000Z'),
    updatedAt: DateTime.parse('2023-01-09T18:00:00.000Z'),
    status: ContentStatus.active,
  ),
  Source(
    id: kSourceId10,
    name: 'Folha de S.Paulo',
    description: 'Brazilian daily newspaper.',
    url: 'https://www.folha.uol.com.br/',
    sourceType: SourceType.newsAgency,
    language: 'pt',
    headquarters: countriesFixturesData[9], // Brazil
    createdAt: DateTime.parse('2023-01-10T19:00:00.000Z'),
    updatedAt: DateTime.parse('2023-01-10T19:00:00.000Z'),
    status: ContentStatus.active,
  ),
];
