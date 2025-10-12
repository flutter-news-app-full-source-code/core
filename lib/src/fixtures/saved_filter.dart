import 'package:core/src/fixtures/countries.dart';
import 'package:core/src/fixtures/fixture_ids.dart';
import 'package:core/src/fixtures/sources.dart';
import 'package:core/src/fixtures/topics.dart';
import 'package:core/src/models/saved_filter.dart';

/// A list of predefined saved searches for fixture data.
final savedFiltersFixturesData = <SavedFilter>[
  SavedFilter(
    id: kSavedFilterId1,
    name: 'UK Tech & Politics',
    topics: [
      topicsFixturesData.firstWhere((t) => t.name == 'Technology'),
      topicsFixturesData.firstWhere((t) => t.name == 'Politics'),
    ],
    sources: [sourcesFixturesData.firstWhere((s) => s.name == 'BBC News')],
    countries: [
      countriesFixturesData.firstWhere((c) => c.name == 'United Kingdom'),
    ],
  ),
  SavedFilter(
    id: kSavedFilterId2,
    name: 'US Business News',
    topics: [topicsFixturesData.firstWhere((t) => t.name == 'Business')],
    sources: [],
    countries: [
      countriesFixturesData.firstWhere((c) => c.name == 'United States'),
    ],
  ),
];
