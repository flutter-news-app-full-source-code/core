import 'package:core/src/enums/enums.dart';
import 'package:core/src/fixtures/countries.dart';
import 'package:core/src/fixtures/fixture_ids.dart';
import 'package:core/src/fixtures/sources.dart';
import 'package:core/src/fixtures/topics.dart';
import 'package:core/src/models/entities/headline.dart';

/// A list of predefined headlines for fixture data.
final headlinesFixturesData = <Headline>[
  Headline(
    id: kHeadlineId1,
    isBreaking: false,
    title: 'AI Breakthrough: New Model Achieves Human-Level Performance',
    url: 'https://example.com/news/ai-breakthrough-1',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId1/800/600',
    source: sourcesFixturesData[0], // TechCrunch
    eventCountry: countriesFixturesData[0], // United States
    topic: topicsFixturesData[0], // Technology
    createdAt: DateTime.now().subtract(const Duration(minutes: 15)),
    updatedAt: DateTime.now().subtract(const Duration(minutes: 15)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId2,
    isBreaking: false,
    title: 'Local Team Wins Championship in Thrilling Final',
    url: 'https://example.com/news/sports-championship-2',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId2/800/600',
    source: sourcesFixturesData[1], // BBC News
    eventCountry: countriesFixturesData[1], // United Kingdom
    topic: topicsFixturesData[1], // Sports
    createdAt: DateTime.now().subtract(const Duration(minutes: 15)),
    updatedAt: DateTime.now().subtract(const Duration(minutes: 15)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId3,
    isBreaking: false,
    title: 'Global Leaders Meet to Discuss Climate Change Policies',
    url: 'https://example.com/news/politics-climate-3',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId3/800/600',
    source: sourcesFixturesData[2], // The New York Times
    eventCountry: countriesFixturesData[2], // Canada
    topic: topicsFixturesData[2], // Politics
    createdAt: DateTime.now().subtract(const Duration(minutes: 15)),
    updatedAt: DateTime.now().subtract(const Duration(minutes: 15)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId4,
    isBreaking: true,
    title: 'New Planet Discovered in Distant Galaxy',
    url: 'https://example.com/news/science-planet-4',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId4/800/600',
    source: sourcesFixturesData[3], // The Guardian
    eventCountry: countriesFixturesData[3], // Australia
    topic: topicsFixturesData[3], // Science
    createdAt: DateTime.now().subtract(const Duration(minutes: 15)),
    updatedAt: DateTime.now().subtract(const Duration(minutes: 15)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId5,
    isBreaking: false,
    title: 'Breakthrough in Cancer Research Offers New Hope',
    url: 'https://example.com/news/health-cancer-5',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId5/800/600',
    source: sourcesFixturesData[4], // CNN
    eventCountry: countriesFixturesData[4], // Germany
    topic: topicsFixturesData[4], // Health
    createdAt: DateTime.now().subtract(const Duration(minutes: 15)),
    updatedAt: DateTime.now().subtract(const Duration(minutes: 15)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId6,
    isBreaking: false,
    title: 'Blockbuster Movie Breaks Box Office Records',
    url: 'https://example.com/news/entertainment-movie-6',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId6/800/600',
    source: sourcesFixturesData[5], // Reuters
    eventCountry: countriesFixturesData[5], // France
    topic: topicsFixturesData[5], // Entertainment
    createdAt: DateTime.now().subtract(const Duration(days: 1)),
    updatedAt: DateTime.now().subtract(const Duration(days: 1)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId7,
    isBreaking: false,
    title: 'Stock Market Reaches All-Time High Amid Economic Boom',
    url: 'https://example.com/news/business-market-7',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId7/800/600',
    source: sourcesFixturesData[6], // Al Jazeera English
    eventCountry: countriesFixturesData[6], // Japan
    topic: topicsFixturesData[6], // Business
    createdAt: DateTime.now().subtract(const Duration(days: 1)),
    updatedAt: DateTime.now().subtract(const Duration(days: 1)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId8,
    isBreaking: false,
    title: 'New Travel Restrictions Lifted for Popular Destinations',
    url: 'https://example.com/news/travel-restrictions-8',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId8/800/600',
    source: sourcesFixturesData[7], // Xinhua News Agency
    eventCountry: countriesFixturesData[7], // China
    topic: topicsFixturesData[7], // Travel
    createdAt: DateTime.now().subtract(const Duration(days: 1)),
    updatedAt: DateTime.now().subtract(const Duration(days: 1)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId9,
    isBreaking: false,
    title: 'Michelin Star Chef Opens New Restaurant in City Center',
    url: 'https://example.com/news/food-restaurant-9',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId9/800/600',
    source: sourcesFixturesData[8], // The Times of India
    eventCountry: countriesFixturesData[8], // India
    topic: topicsFixturesData[8], // Food
    createdAt: DateTime.now().subtract(const Duration(days: 1)),
    updatedAt: DateTime.now().subtract(const Duration(days: 1)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId10,
    isBreaking: false,
    title: 'Innovative Teaching Methods Boost Student Engagement',
    url: 'https://example.com/news/education-methods-10',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId10/800/600',
    source: sourcesFixturesData[9], // Folha de S.Paulo
    eventCountry: countriesFixturesData[9], // Brazil
    topic: topicsFixturesData[9], // Education
    createdAt: DateTime.now().subtract(const Duration(days: 1)),
    updatedAt: DateTime.now().subtract(const Duration(days: 1)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId11,
    isBreaking: false,
    title: 'Cybersecurity Firms Warn of New Global Threat',
    url: 'https://example.com/news/cybersecurity-threat-11',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId11/800/600',
    source: sourcesFixturesData[0], // TechCrunch
    eventCountry: countriesFixturesData[0], // United States
    topic: topicsFixturesData[0], // Technology
    createdAt: DateTime.now().subtract(const Duration(days: 2)),
    updatedAt: DateTime.now().subtract(const Duration(days: 2)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId12,
    isBreaking: false,
    title: 'Olympics Committee Announces Host City for 2032 Games',
    url: 'https://example.com/news/sports-olympics-12',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId12/800/600',
    source: sourcesFixturesData[1], // BBC News
    eventCountry: countriesFixturesData[1], // United Kingdom
    topic: topicsFixturesData[1], // Sports
    createdAt: DateTime.now().subtract(const Duration(days: 2)),
    updatedAt: DateTime.now().subtract(const Duration(days: 2)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId13,
    isBreaking: false,
    title: 'New Bill Aims to Reform Healthcare System',
    url: 'https://example.com/news/politics-healthcare-13',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId13/800/600',
    source: sourcesFixturesData[2], // The New York Times
    eventCountry: countriesFixturesData[2], // Canada
    topic: topicsFixturesData[4], // Health
    createdAt: DateTime.now().subtract(const Duration(days: 2)),
    updatedAt: DateTime.now().subtract(const Duration(days: 2)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId14,
    isBreaking: false,
    title: 'Archaeologists Uncover Ancient City Ruins',
    url: 'https://example.com/news/science-archaeology-14',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId14/800/600',
    source: sourcesFixturesData[3], // The Guardian
    eventCountry: countriesFixturesData[3], // Australia
    topic: topicsFixturesData[3], // Science
    createdAt: DateTime.now().subtract(const Duration(days: 2)),
    updatedAt: DateTime.now().subtract(const Duration(days: 2)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId15,
    isBreaking: false,
    title: 'Dietary Guidelines Updated for Public Health',
    url: 'https://example.com/news/health-diet-15',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId15/800/600',
    source: sourcesFixturesData[4], // CNN
    eventCountry: countriesFixturesData[4], // Germany
    topic: topicsFixturesData[4], // Health
    createdAt: DateTime.now().subtract(const Duration(days: 2)),
    updatedAt: DateTime.now().subtract(const Duration(days: 2)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId16,
    isBreaking: false,
    title: 'Music Festival Announces Star-Studded Lineup',
    url: 'https://example.com/news/entertainment-music-16',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId16/800/600',
    source: sourcesFixturesData[5], // Reuters
    eventCountry: countriesFixturesData[5], // France
    topic: topicsFixturesData[5], // Entertainment
    createdAt: DateTime.now().subtract(const Duration(days: 3)),
    updatedAt: DateTime.now().subtract(const Duration(days: 3)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId17,
    isBreaking: false,
    title: 'Tech Giant Acquires Startup in Multi-Billion Dollar Deal',
    url: 'https://example.com/news/business-acquisition-17',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId17/800/600',
    source: sourcesFixturesData[6], // Al Jazeera English
    eventCountry: countriesFixturesData[6], // Japan
    topic: topicsFixturesData[6], // Business
    createdAt: DateTime.now().subtract(const Duration(days: 3)),
    updatedAt: DateTime.now().subtract(const Duration(days: 3)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId18,
    isBreaking: false,
    title: 'Space Tourism Takes Off: First Commercial Flights Announced',
    url: 'https://example.com/news/travel-space-18',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId18/800/600',
    source: sourcesFixturesData[7], // Xinhua News Agency
    eventCountry: countriesFixturesData[7], // China
    topic: topicsFixturesData[7], // Travel
    createdAt: DateTime.now().subtract(const Duration(days: 3)),
    updatedAt: DateTime.now().subtract(const Duration(days: 3)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId19,
    isBreaking: false,
    title: 'Future of Food: Lab-Grown Meat Gains Popularity',
    url: 'https://example.com/news/food-lab-meat-19',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId19/800/600',
    source: sourcesFixturesData[8], // The Times of India
    eventCountry: countriesFixturesData[8], // India
    topic: topicsFixturesData[8], // Food
    createdAt: DateTime.now().subtract(const Duration(days: 3)),
    updatedAt: DateTime.now().subtract(const Duration(days: 3)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId20,
    isBreaking: false,
    title: 'Online Learning Platforms See Surge in Enrollment',
    url: 'https://example.com/news/education-online-20',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId20/800/600',
    source: sourcesFixturesData[9], // Folha de S.Paulo
    eventCountry: countriesFixturesData[9], // Brazil
    topic: topicsFixturesData[9], // Education
    createdAt: DateTime.now().subtract(const Duration(days: 3)),
    updatedAt: DateTime.now().subtract(const Duration(days: 3)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId21,
    isBreaking: false,
    title: 'Quantum Computing Achieves New Milestone',
    url: 'https://example.com/news/tech-quantum-21',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId21/800/600',
    source: sourcesFixturesData[0], // TechCrunch
    eventCountry: countriesFixturesData[0], // United States
    topic: topicsFixturesData[0], // Technology
    createdAt: DateTime.now().subtract(const Duration(days: 4)),
    updatedAt: DateTime.now().subtract(const Duration(days: 4)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId22,
    isBreaking: false,
    title: 'World Cup Qualifiers: Unexpected Upsets Shake Rankings',
    url: 'https://example.com/news/sports-worldcup-22',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId22/800/600',
    source: sourcesFixturesData[1], // BBC News
    eventCountry: countriesFixturesData[1], // United Kingdom
    topic: topicsFixturesData[1], // Sports
    createdAt: DateTime.now().subtract(const Duration(days: 4)),
    updatedAt: DateTime.now().subtract(const Duration(days: 4)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId23,
    isBreaking: false,
    title: 'Election Results: New Government Takes Power',
    url: 'https://example.com/news/politics-election-23',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId23/800/600',
    source: sourcesFixturesData[2], // The New York Times
    eventCountry: countriesFixturesData[2], // Canada
    topic: topicsFixturesData[2], // Politics
    createdAt: DateTime.now().subtract(const Duration(days: 4)),
    updatedAt: DateTime.now().subtract(const Duration(days: 4)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId24,
    isBreaking: false,
    title: 'Breakthrough in Fusion Energy Research Announced',
    url: 'https://example.com/news/science-fusion-24',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId24/800/600',
    source: sourcesFixturesData[3], // The Guardian
    eventCountry: countriesFixturesData[3], // Australia
    topic: topicsFixturesData[3], // Science
    createdAt: DateTime.now().subtract(const Duration(days: 4)),
    updatedAt: DateTime.now().subtract(const Duration(days: 4)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId25,
    isBreaking: false,
    title: 'Mental Health Awareness Campaign Launched Globally',
    url: 'https://example.com/news/health-mental-25',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId25/800/600',
    source: sourcesFixturesData[4], // CNN
    eventCountry: countriesFixturesData[4], // Germany
    topic: topicsFixturesData[4], // Health
    createdAt: DateTime.now().subtract(const Duration(days: 4)),
    updatedAt: DateTime.now().subtract(const Duration(days: 4)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId26,
    isBreaking: false,
    title: 'Gaming Industry Sees Record Growth in Virtual Reality',
    url: 'https://example.com/news/entertainment-vr-26',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId26/800/600',
    source: sourcesFixturesData[5], // Reuters
    eventCountry: countriesFixturesData[5], // France
    topic: topicsFixturesData[5], // Entertainment
    createdAt: DateTime.now().subtract(const Duration(days: 5)),
    updatedAt: DateTime.now().subtract(const Duration(days: 5)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId27,
    isBreaking: false,
    title: 'Global Supply Chain Disruptions Impacting Consumer Goods',
    url: 'https://example.com/news/business-supplychain-27',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId27/800/600',
    source: sourcesFixturesData[6], // Al Jazeera English
    eventCountry: countriesFixturesData[6], // Japan
    topic: topicsFixturesData[6], // Business
    createdAt: DateTime.now().subtract(const Duration(days: 5)),
    updatedAt: DateTime.now().subtract(const Duration(days: 5)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId28,
    isBreaking: false,
    title: 'Arctic Expedition Discovers New Marine Species',
    url: 'https://example.com/news/travel-arctic-28',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId28/800/600',
    source: sourcesFixturesData[7], // Xinhua News Agency
    eventCountry: countriesFixturesData[7], // China
    topic: topicsFixturesData[7], // Travel
    createdAt: DateTime.now().subtract(const Duration(days: 5)),
    updatedAt: DateTime.now().subtract(const Duration(days: 5)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId29,
    isBreaking: false,
    title: 'Rise of Plant-Based Cuisine: New Restaurants Open',
    url: 'https://example.com/news/food-plantbased-29',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId29/800/600',
    source: sourcesFixturesData[8], // The Times of India
    eventCountry: countriesFixturesData[8], // India
    topic: topicsFixturesData[8], // Food
    createdAt: DateTime.now().subtract(const Duration(days: 5)),
    updatedAt: DateTime.now().subtract(const Duration(days: 5)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId30,
    isBreaking: false,
    title: 'Education Technology Transforms Classrooms',
    url: 'https://example.com/news/education-edtech-30',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId30/800/600',
    source: sourcesFixturesData[9], // Folha de S.Paulo
    eventCountry: countriesFixturesData[9], // Brazil
    topic: topicsFixturesData[9], // Education
    createdAt: DateTime.now().subtract(const Duration(days: 5)),
    updatedAt: DateTime.now().subtract(const Duration(days: 5)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId31,
    isBreaking: false,
    title: 'SpaceX Launches New Satellite Constellation',
    url: 'https://example.com/news/tech-spacex-31',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId31/800/600',
    source: sourcesFixturesData[0], // TechCrunch
    eventCountry: countriesFixturesData[0], // United States
    topic: topicsFixturesData[0], // Technology
    createdAt: DateTime.now().subtract(const Duration(days: 6)),
    updatedAt: DateTime.now().subtract(const Duration(days: 6)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId32,
    isBreaking: false,
    title: 'Football Legend Announces Retirement',
    url: 'https://example.com/news/sports-retirement-32',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId32/800/600',
    source: sourcesFixturesData[1], // BBC News
    eventCountry: countriesFixturesData[1], // United Kingdom
    topic: topicsFixturesData[1], // Sports
    createdAt: DateTime.now().subtract(const Duration(days: 6)),
    updatedAt: DateTime.now().subtract(const Duration(days: 6)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId33,
    isBreaking: false,
    title: 'G7 Summit Concludes with Joint Statement on Global Economy',
    url: 'https://example.com/news/politics-g7-33',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId33/800/600',
    source: sourcesFixturesData[2], // The New York Times
    eventCountry: countriesFixturesData[2], // Canada
    topic: topicsFixturesData[2], // Politics
    createdAt: DateTime.now().subtract(const Duration(days: 6)),
    updatedAt: DateTime.now().subtract(const Duration(days: 6)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId34,
    isBreaking: false,
    title: "Breakthrough in Alzheimer's Research Offers New Treatment Path",
    url: 'https://example.com/news/science-alzheimers-34',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId34/800/600',
    source: sourcesFixturesData[3], // The Guardian
    eventCountry: countriesFixturesData[3], // Australia
    topic: topicsFixturesData[4], // Health
    createdAt: DateTime.now().subtract(const Duration(days: 6)),
    updatedAt: DateTime.now().subtract(const Duration(days: 6)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId35,
    isBreaking: false,
    title: 'Global Vaccination Campaign Reaches Billions',
    url: 'https://example.com/news/health-vaccine-35',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId35/800/600',
    source: sourcesFixturesData[4], // CNN
    eventCountry: countriesFixturesData[4], // Germany
    topic: topicsFixturesData[4], // Health
    createdAt: DateTime.now().subtract(const Duration(days: 6)),
    updatedAt: DateTime.now().subtract(const Duration(days: 6)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId36,
    isBreaking: false,
    title: 'Streaming Wars Intensify with New Platform Launches',
    url: 'https://example.com/news/entertainment-streaming-36',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId36/800/600',
    source: sourcesFixturesData[5], // Reuters
    eventCountry: countriesFixturesData[5], // France
    topic: topicsFixturesData[5], // Entertainment
    createdAt: DateTime.now().subtract(const Duration(days: 7)),
    updatedAt: DateTime.now().subtract(const Duration(days: 7)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId37,
    isBreaking: false,
    title: 'Cryptocurrency Market Experiences Major Volatility',
    url: 'https://example.com/news/business-crypto-37',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId37/800/600',
    source: sourcesFixturesData[6], // Al Jazeera English
    eventCountry: countriesFixturesData[6], // Japan
    topic: topicsFixturesData[0], // Technology
    createdAt: DateTime.now().subtract(const Duration(days: 7)),
    updatedAt: DateTime.now().subtract(const Duration(days: 7)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId38,
    isBreaking: false,
    title: 'Sustainable Tourism Initiatives Gain Momentum',
    url: 'https://example.com/news/travel-sustainable-38',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId38/800/600',
    source: sourcesFixturesData[7], // Xinhua News Agency
    eventCountry: countriesFixturesData[7], // China
    topic: topicsFixturesData[7], // Travel
    createdAt: DateTime.now().subtract(const Duration(days: 7)),
    updatedAt: DateTime.now().subtract(const Duration(days: 7)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId39,
    isBreaking: false,
    title: 'Food Security Summit Addresses Global Hunger',
    url: 'https://example.com/news/food-security-39',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId39/800/600',
    source: sourcesFixturesData[8], // The Times of India
    eventCountry: countriesFixturesData[8], // India
    topic: topicsFixturesData[8], // Food
    createdAt: DateTime.now().subtract(const Duration(days: 7)),
    updatedAt: DateTime.now().subtract(const Duration(days: 7)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId40,
    isBreaking: false,
    title: 'Robotics in Education: New Tools for Learning',
    url: 'https://example.com/news/education-robotics-40',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId40/800/600',
    source: sourcesFixturesData[9], // Folha de S.Paulo
    eventCountry: countriesFixturesData[9], // Brazil
    topic: topicsFixturesData[9], // Education
    createdAt: DateTime.now().subtract(const Duration(days: 7)),
    updatedAt: DateTime.now().subtract(const Duration(days: 7)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId41,
    isBreaking: false,
    title: 'AI Ethics Debate Intensifies Among Tech Leaders',
    url: 'https://example.com/news/tech-ethics-41',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId41/800/600',
    source: sourcesFixturesData[0], // TechCrunch
    eventCountry: countriesFixturesData[0], // United States
    topic: topicsFixturesData[0], // Technology
    createdAt: DateTime.now().subtract(const Duration(days: 8)),
    updatedAt: DateTime.now().subtract(const Duration(days: 8)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId42,
    isBreaking: false,
    title: 'Esports Industry Sees Massive Investment Boom',
    url: 'https://example.com/news/sports-esports-42',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId42/800/600',
    source: sourcesFixturesData[1], // BBC News
    eventCountry: countriesFixturesData[1], // United Kingdom
    topic: topicsFixturesData[1], // Sports
    createdAt: DateTime.now().subtract(const Duration(days: 8)),
    updatedAt: DateTime.now().subtract(const Duration(days: 8)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId43,
    isBreaking: false,
    title: 'International Sanctions Imposed on Rogue State',
    url: 'https://example.com/news/politics-sanctions-43',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId43/800/600',
    source: sourcesFixturesData[2], // The New York Times
    eventCountry: countriesFixturesData[2], // Canada
    topic: topicsFixturesData[2], // Politics
    createdAt: DateTime.now().subtract(const Duration(days: 8)),
    updatedAt: DateTime.now().subtract(const Duration(days: 8)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId44,
    isBreaking: false,
    title: 'New Species of Deep-Sea Creature Discovered',
    url: 'https://example.com/news/science-deepsea-44',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId44/800/600',
    source: sourcesFixturesData[3], // The Guardian
    eventCountry: countriesFixturesData[3], // Australia
    topic: topicsFixturesData[3], // Science
    createdAt: DateTime.now().subtract(const Duration(days: 8)),
    updatedAt: DateTime.now().subtract(const Duration(days: 8)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId45,
    isBreaking: false,
    title: 'Global Health Crisis: New Pandemic Preparedness Plan',
    url: 'https://example.com/news/health-pandemic-45',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId45/800/600',
    source: sourcesFixturesData[4], // CNN
    eventCountry: countriesFixturesData[4], // Germany
    topic: topicsFixturesData[4], // Health
    createdAt: DateTime.now().subtract(const Duration(days: 8)),
    updatedAt: DateTime.now().subtract(const Duration(days: 8)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId46,
    isBreaking: false,
    title: 'Hollywood Strikes Continue: Impact on Film Production',
    url: 'https://example.com/news/entertainment-strikes-46',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId46/800/600',
    source: sourcesFixturesData[5], // Reuters
    eventCountry: countriesFixturesData[5], // France
    topic: topicsFixturesData[5], // Entertainment
    createdAt: DateTime.now().subtract(const Duration(days: 9)),
    updatedAt: DateTime.now().subtract(const Duration(days: 9)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId47,
    isBreaking: false,
    title: 'Emerging Markets Show Strong Economic Resilience',
    url: 'https://example.com/news/business-emerging-47',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId47/800/600',
    source: sourcesFixturesData[6], // Al Jazeera English
    eventCountry: countriesFixturesData[6], // Japan
    topic: topicsFixturesData[6], // Business
    createdAt: DateTime.now().subtract(const Duration(days: 9)),
    updatedAt: DateTime.now().subtract(const Duration(days: 9)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId48,
    isBreaking: false,
    title: 'Adventure Tourism Booms in Remote Regions',
    url: 'https://example.com/news/travel-adventure-48',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId48/800/600',
    source: sourcesFixturesData[7], // Xinhua News Agency
    eventCountry: countriesFixturesData[7], // China
    topic: topicsFixturesData[7], // Travel
    createdAt: DateTime.now().subtract(const Duration(days: 9)),
    updatedAt: DateTime.now().subtract(const Duration(days: 9)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId49,
    isBreaking: false,
    title: 'The Rise of Sustainable Food Packaging',
    url: 'https://example.com/news/food-packaging-49',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId49/800/600',
    source: sourcesFixturesData[8], // The Times of India
    eventCountry: countriesFixturesData[8], // India
    topic: topicsFixturesData[8], // Food
    createdAt: DateTime.now().subtract(const Duration(days: 9)),
    updatedAt: DateTime.now().subtract(const Duration(days: 9)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId50,
    isBreaking: false,
    title: 'Personalized Learning: Tailoring Education to Individual Needs',
    url: 'https://example.com/news/education-personalized-50',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId50/800/600',
    source: sourcesFixturesData[9], // Folha de S.Paulo
    eventCountry: countriesFixturesData[9], // Brazil
    topic: topicsFixturesData[9], // Education
    createdAt: DateTime.now().subtract(const Duration(days: 9)),
    updatedAt: DateTime.now().subtract(const Duration(days: 9)),
    status: ContentStatus.active,
  ),

  // --- Headlines for New Sources (5 per source) ---

  // --- Local News Outlets (kSourceId11 - kSourceId20) ---
  Headline(
    id: kHeadlineId51,
    isBreaking: false,
    title: 'City Council Approves New Downtown Development Plan',
    url: 'https://example.com/news/sf-downtown-plan',
    imageUrl:
        'https://picsum.photos/seed/kHeadlineId51/800/600', // San Francisco Chronicle
    source: sourcesFixturesData[10], // San Francisco Chronicle
    eventCountry: countriesFixturesData[0], // United States
    topic: topicsFixturesData[2], // Politics
    createdAt: DateTime.now().subtract(const Duration(days: 10)),
    updatedAt: DateTime.now().subtract(const Duration(days: 10)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId52,
    isBreaking: false,
    title: 'Tech Startups Flourish in the Bay Area',
    url: 'https://example.com/news/sf-tech-boom',
    imageUrl:
        'https://picsum.photos/seed/kHeadlineId52/800/600', // San Francisco Chronicle
    source: sourcesFixturesData[10], // San Francisco Chronicle
    eventCountry: countriesFixturesData[0], // United States
    topic: topicsFixturesData[0], // Technology
    createdAt: DateTime.now().subtract(const Duration(days: 10)),
    updatedAt: DateTime.now().subtract(const Duration(days: 10)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId53,
    isBreaking: false,
    title: 'Golden Gate Bridge Retrofit Project Begins',
    url: 'https://example.com/news/ggb-retrofit',
    imageUrl:
        'https://picsum.photos/seed/kHeadlineId53/800/600', // San Francisco Chronicle
    source: sourcesFixturesData[10], // San Francisco Chronicle
    eventCountry: countriesFixturesData[0], // United States
    topic: topicsFixturesData[7], // Travel
    createdAt: DateTime.now().subtract(const Duration(days: 11)),
    updatedAt: DateTime.now().subtract(const Duration(days: 11)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId54,
    isBreaking: false,
    title: 'Local Chef Wins Prestigious Culinary Award',
    url: 'https://example.com/news/sf-chef-award',
    imageUrl:
        'https://picsum.photos/seed/kHeadlineId54/800/600', // San Francisco Chronicle
    source: sourcesFixturesData[10], // San Francisco Chronicle
    eventCountry: countriesFixturesData[0], // United States
    topic: topicsFixturesData[8], // Food
    createdAt: DateTime.now().subtract(const Duration(days: 11)),
    updatedAt: DateTime.now().subtract(const Duration(days: 11)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId55,
    isBreaking: false,
    title: 'Warriors Secure Victory in Season Opener',
    url: 'https://example.com/news/warriors-win',
    imageUrl:
        'https://picsum.photos/seed/kHeadlineId55/800/600', // San Francisco Chronicle
    source: sourcesFixturesData[10], // San Francisco Chronicle
    eventCountry: countriesFixturesData[0], // United States
    topic: topicsFixturesData[1], // Sports
    createdAt: DateTime.now().subtract(const Duration(days: 12)),
    updatedAt: DateTime.now().subtract(const Duration(days: 12)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId56,
    isBreaking: false,
    title: 'Manchester United Announces New Stadium Expansion Plans',
    url: 'https://example.com/news/mu-stadium-expansion',
    imageUrl:
        'https://picsum.photos/seed/kHeadlineId56/800/600', // Manchester Evening News
    source: sourcesFixturesData[11], // Manchester Evening News
    eventCountry: countriesFixturesData[2], // United Kingdom
    topic: topicsFixturesData[1], // Sports
    createdAt: DateTime.now().subtract(const Duration(days: 12)),
    updatedAt: DateTime.now().subtract(const Duration(days: 12)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId57,
    isBreaking: false,
    title: 'New Tram Line Opens in Greater Manchester',
    url: 'https://example.com/news/manchester-tram-line',
    imageUrl:
        'https://picsum.photos/seed/kHeadlineId57/800/600', // Manchester Evening News
    source: sourcesFixturesData[11], // Manchester Evening News
    eventCountry: countriesFixturesData[2], // United Kingdom
    topic: topicsFixturesData[7], // Travel
    createdAt: DateTime.now().subtract(const Duration(days: 13)),
    updatedAt: DateTime.now().subtract(const Duration(days: 13)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId58,
    isBreaking: false,
    title: 'Manchester Tech Hub Attracts Global Talent',
    url: 'https://example.com/news/manchester-tech-hub',
    imageUrl:
        'https://picsum.photos/seed/kHeadlineId58/800/600', // Manchester Evening News
    source: sourcesFixturesData[11], // Manchester Evening News
    eventCountry: countriesFixturesData[2], // United Kingdom
    topic: topicsFixturesData[0], // Technology
    createdAt: DateTime.now().subtract(const Duration(days: 13)),
    updatedAt: DateTime.now().subtract(const Duration(days: 13)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId59,
    isBreaking: false,
    title: 'Coronation Street Filming Causes Local Buzz',
    url: 'https://example.com/news/corrie-filming',
    imageUrl:
        'https://picsum.photos/seed/kHeadlineId59/800/600', // Manchester Evening News
    source: sourcesFixturesData[11], // Manchester Evening News
    eventCountry: countriesFixturesData[2], // United Kingdom
    topic: topicsFixturesData[5], // Entertainment
    createdAt: DateTime.now().subtract(const Duration(days: 14)),
    updatedAt: DateTime.now().subtract(const Duration(days: 14)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId60,
    isBreaking: false,
    title: 'Council Debates Clean Air Zone Implementation',
    url: 'https://example.com/news/manc-caz-debate',
    imageUrl:
        'https://picsum.photos/seed/kHeadlineId60/800/600', // Manchester Evening News
    source: sourcesFixturesData[11], // Manchester Evening News
    eventCountry: countriesFixturesData[2], // United Kingdom
    topic: topicsFixturesData[2], // Politics
    createdAt: DateTime.now().subtract(const Duration(days: 14)),
    updatedAt: DateTime.now().subtract(const Duration(days: 14)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId61,
    isBreaking: false,
    title: 'Sydney Opera House Announces New Season Lineup',
    url: 'https://example.com/news/sydney-opera-season',
    imageUrl:
        'https://picsum.photos/seed/kHeadlineId61/800/600', // The Sydney Morning Herald
    source: sourcesFixturesData[12], // The Sydney Morning Herald
    eventCountry: countriesFixturesData[3], // Australia
    topic: topicsFixturesData[5], // Entertainment
    createdAt: DateTime.now().subtract(const Duration(days: 15)),
    updatedAt: DateTime.now().subtract(const Duration(days: 15)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId62,
    isBreaking: false,
    title: 'Housing Prices in Sydney Continue to Climb',
    url: 'https://example.com/news/sydney-housing-prices',
    imageUrl:
        'https://picsum.photos/seed/kHeadlineId62/800/600', // The Sydney Morning Herald
    source: sourcesFixturesData[12], // The Sydney Morning Herald
    eventCountry: countriesFixturesData[3], // Australia
    topic: topicsFixturesData[6], // Business
    createdAt: DateTime.now().subtract(const Duration(days: 15)),
    updatedAt: DateTime.now().subtract(const Duration(days: 15)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId63,
    isBreaking: false,
    title: 'NSW Government Unveils New Infrastructure Projects',
    url: 'https://example.com/news/nsw-infrastructure',
    imageUrl:
        'https://picsum.photos/seed/kHeadlineId63/800/600', // The Sydney Morning Herald
    source: sourcesFixturesData[12], // The Sydney Morning Herald
    eventCountry: countriesFixturesData[3], // Australia
    topic: topicsFixturesData[2], // Politics
    createdAt: DateTime.now().subtract(const Duration(days: 16)),
    updatedAt: DateTime.now().subtract(const Duration(days: 16)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId64,
    isBreaking: false,
    title: 'Swans Triumph in AFL Derby Match',
    url: 'https://example.com/news/swans-afl-win',
    imageUrl:
        'https://picsum.photos/seed/kHeadlineId64/800/600', // The Sydney Morning Herald
    source: sourcesFixturesData[12], // The Sydney Morning Herald
    eventCountry: countriesFixturesData[3], // Australia
    topic: topicsFixturesData[1], // Sports
    createdAt: DateTime.now().subtract(const Duration(days: 16)),
    updatedAt: DateTime.now().subtract(const Duration(days: 16)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId65,
    isBreaking: false,
    title: 'Bondi Beach Erosion Concerns Prompt Action',
    url: 'https://example.com/news/bondi-erosion',
    imageUrl:
        'https://picsum.photos/seed/kHeadlineId65/800/600', // The Sydney Morning Herald
    source: sourcesFixturesData[12], // The Sydney Morning Herald
    eventCountry: countriesFixturesData[3], // Australia
    topic: topicsFixturesData[3], // Science
    createdAt: DateTime.now().subtract(const Duration(days: 17)),
    updatedAt: DateTime.now().subtract(const Duration(days: 17)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId66,
    isBreaking: false,
    title: 'Paris Metro Expansion: New Stations Opened',
    url: 'https://example.com/news/paris-metro-expansion',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId66/800/600', // Le Parisien
    source: sourcesFixturesData[13], // Le Parisien
    eventCountry: countriesFixturesData[5], // France
    topic: topicsFixturesData[7], // Travel
    createdAt: DateTime.now().subtract(const Duration(days: 17)),
    updatedAt: DateTime.now().subtract(const Duration(days: 17)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId67,
    isBreaking: false,
    title: 'Louvre Museum Unveils New Egyptian Antiquities Wing',
    url: 'https://example.com/news/louvre-egyptian-wing',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId67/800/600', // Le Parisien
    source: sourcesFixturesData[13], // Le Parisien
    eventCountry: countriesFixturesData[5], // France
    topic: topicsFixturesData[5], // Entertainment
    createdAt: DateTime.now().subtract(const Duration(days: 18)),
    updatedAt: DateTime.now().subtract(const Duration(days: 18)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId68,
    isBreaking: false,
    title: 'Paris Saint-Germain Secures Ligue 1 Title',
    url: 'https://example.com/news/psg-ligue1-title',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId68/800/600', // Le Parisien
    source: sourcesFixturesData[13], // Le Parisien
    eventCountry: countriesFixturesData[5], // France
    topic: topicsFixturesData[1], // Sports
    createdAt: DateTime.now().subtract(const Duration(days: 18)),
    updatedAt: DateTime.now().subtract(const Duration(days: 18)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId69,
    isBreaking: false,
    title: 'Mayor of Paris Announces New Green Initiatives',
    url: 'https://example.com/news/paris-green-initiatives',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId69/800/600', // Le Parisien
    source: sourcesFixturesData[13], // Le Parisien
    eventCountry: countriesFixturesData[5], // France
    topic: topicsFixturesData[2], // Politics
    createdAt: DateTime.now().subtract(const Duration(days: 19)),
    updatedAt: DateTime.now().subtract(const Duration(days: 19)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId70,
    isBreaking: false,
    title: 'Paris Fashion Week Highlights New Trends',
    url: 'https://example.com/news/paris-fashion-week',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId70/800/600', // Le Parisien
    source: sourcesFixturesData[13], // Le Parisien
    eventCountry: countriesFixturesData[5], // France
    topic: topicsFixturesData[5], // Entertainment
    createdAt: DateTime.now().subtract(const Duration(days: 19)),
    updatedAt: DateTime.now().subtract(const Duration(days: 19)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId71,
    isBreaking: false,
    title: 'Toronto Raptors Make Key Trade Ahead of Deadline',
    url: 'https://example.com/news/raptors-trade',
    imageUrl:
        'https://picsum.photos/seed/kHeadlineId71/800/600', // The Toronto Star
    source: sourcesFixturesData[14], // The Toronto Star
    eventCountry: countriesFixturesData[1], // Canada
    topic: topicsFixturesData[1], // Sports
    createdAt: DateTime.now().subtract(const Duration(days: 20)),
    updatedAt: DateTime.now().subtract(const Duration(days: 20)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId72,
    isBreaking: false,
    title: 'TTC Announces Service Changes for Summer',
    url: 'https://example.com/news/ttc-summer-changes',
    imageUrl:
        'https://picsum.photos/seed/kHeadlineId72/800/600', // The Toronto Star
    source: sourcesFixturesData[14], // The Toronto Star
    eventCountry: countriesFixturesData[1], // Canada
    topic: topicsFixturesData[7], // Travel
    createdAt: DateTime.now().subtract(const Duration(days: 20)),
    updatedAt: DateTime.now().subtract(const Duration(days: 20)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId73,
    isBreaking: false,
    title: 'Toronto International Film Festival (TIFF) Lineup Revealed',
    url: 'https://example.com/news/tiff-lineup',
    imageUrl:
        'https://picsum.photos/seed/kHeadlineId73/800/600', // The Toronto Star
    source: sourcesFixturesData[14], // The Toronto Star
    eventCountry: countriesFixturesData[1], // Canada
    topic: topicsFixturesData[5], // Entertainment
    createdAt: DateTime.now().subtract(const Duration(days: 21)),
    updatedAt: DateTime.now().subtract(const Duration(days: 21)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId74,
    isBreaking: false,
    title: 'City of Toronto Grapples with Housing Affordability',
    url: 'https://example.com/news/toronto-housing-crisis',
    imageUrl:
        'https://picsum.photos/seed/kHeadlineId74/800/600', // The Toronto Star
    source: sourcesFixturesData[14], // The Toronto Star
    eventCountry: countriesFixturesData[1], // Canada
    topic: topicsFixturesData[2], // Politics
    createdAt: DateTime.now().subtract(const Duration(days: 21)),
    updatedAt: DateTime.now().subtract(const Duration(days: 21)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId75,
    isBreaking: false,
    title: 'New Waterfront Development Project Approved',
    url: 'https://example.com/news/toronto-waterfront-project',
    imageUrl:
        'https://picsum.photos/seed/kHeadlineId75/800/600', // The Toronto Star
    source: sourcesFixturesData[14], // The Toronto Star
    eventCountry: countriesFixturesData[1], // Canada
    topic: topicsFixturesData[6], // Business
    createdAt: DateTime.now().subtract(const Duration(days: 22)),
    updatedAt: DateTime.now().subtract(const Duration(days: 22)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId76,
    isBreaking: false,
    title: 'Berlin Philharmonic Announces New Conductor',
    url: 'https://example.com/news/berlin-phil-conductor',
    imageUrl:
        'https://picsum.photos/seed/kHeadlineId76/800/600', // Berliner Morgenpost
    source: sourcesFixturesData[15], // Berliner Morgenpost
    eventCountry: countriesFixturesData[4], // Germany
    topic: topicsFixturesData[5], // Entertainment
    createdAt: DateTime.now().subtract(const Duration(days: 22)),
    updatedAt: DateTime.now().subtract(const Duration(days: 22)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId77,
    isBreaking: false,
    title: 'Remnants of Berlin Wall Unearthed During Construction',
    url: 'https://example.com/news/berlin-wall-discovery',
    imageUrl:
        'https://picsum.photos/seed/kHeadlineId77/800/600', // Berliner Morgenpost
    source: sourcesFixturesData[15], // Berliner Morgenpost
    eventCountry: countriesFixturesData[4], // Germany
    topic: topicsFixturesData[3], // Science
    createdAt: DateTime.now().subtract(const Duration(days: 23)),
    updatedAt: DateTime.now().subtract(const Duration(days: 23)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId78,
    isBreaking: false,
    title: 'Hertha BSC Faces Relegation Battle',
    url: 'https://example.com/news/hertha-bsc-relegation',
    imageUrl:
        'https://picsum.photos/seed/kHeadlineId78/800/600', // Berliner Morgenpost
    source: sourcesFixturesData[15], // Berliner Morgenpost
    eventCountry: countriesFixturesData[4], // Germany
    topic: topicsFixturesData[1], // Sports
    createdAt: DateTime.now().subtract(const Duration(days: 23)),
    updatedAt: DateTime.now().subtract(const Duration(days: 23)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId79,
    isBreaking: false,
    title: 'Berlin Senate Approves Rent Control Measures',
    url: 'https://example.com/news/berlin-rent-control',
    imageUrl:
        'https://picsum.photos/seed/kHeadlineId79/800/600', // Berliner Morgenpost
    source: sourcesFixturesData[15], // Berliner Morgenpost
    eventCountry: countriesFixturesData[4], // Germany
    topic: topicsFixturesData[2], // Politics
    createdAt: DateTime.now().subtract(const Duration(days: 24)),
    updatedAt: DateTime.now().subtract(const Duration(days: 24)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId80,
    isBreaking: false,
    title: 'Brandenburg Airport Reports Record Passenger Numbers',
    url: 'https://example.com/news/ber-airport-record',
    imageUrl:
        'https://picsum.photos/seed/kHeadlineId80/800/600', // Berliner Morgenpost
    source: sourcesFixturesData[15], // Berliner Morgenpost
    eventCountry: countriesFixturesData[4], // Germany
    topic: topicsFixturesData[7], // Travel
    createdAt: DateTime.now().subtract(const Duration(days: 24)),
    updatedAt: DateTime.now().subtract(const Duration(days: 24)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId81,
    isBreaking: false,
    title: 'Tokyo Government Tackles Aging Population Issues',
    url: 'https://example.com/news/tokyo-aging-population',
    imageUrl:
        'https://picsum.photos/seed/kHeadlineId81/800/600', // The Asahi Shimbun (Tokyo)
    source: sourcesFixturesData[16], // The Asahi Shimbun (Tokyo)
    eventCountry: countriesFixturesData[6], // Japan
    topic: topicsFixturesData[2], // Politics
    createdAt: DateTime.now().subtract(const Duration(days: 25)),
    updatedAt: DateTime.now().subtract(const Duration(days: 25)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId82,
    isBreaking: false,
    title: 'New Shinkansen Line to Connect Tokyo and Tsuruga',
    url: 'https://example.com/news/shinkansen-extension',
    imageUrl:
        'https://picsum.photos/seed/kHeadlineId82/800/600', // The Asahi Shimbun (Tokyo)
    source: sourcesFixturesData[16], // The Asahi Shimbun (Tokyo)
    eventCountry: countriesFixturesData[6], // Japan
    topic: topicsFixturesData[7], // Travel
    createdAt: DateTime.now().subtract(const Duration(days: 25)),
    updatedAt: DateTime.now().subtract(const Duration(days: 25)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId83,
    isBreaking: false,
    title: 'Yomiuri Giants Clinch Central League Pennant',
    url: 'https://example.com/news/giants-win-pennant',
    imageUrl:
        'https://picsum.photos/seed/kHeadlineId83/800/600', // The Asahi Shimbun (Tokyo)
    source: sourcesFixturesData[16], // The Asahi Shimbun (Tokyo)
    eventCountry: countriesFixturesData[6], // Japan
    topic: topicsFixturesData[1], // Sports
    createdAt: DateTime.now().subtract(const Duration(days: 26)),
    updatedAt: DateTime.now().subtract(const Duration(days: 26)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId84,
    isBreaking: false,
    title: 'Studio Ghibli Announces New Film Project',
    url: 'https://example.com/news/ghibli-new-film',
    imageUrl:
        'https://picsum.photos/seed/kHeadlineId84/800/600', // The Asahi Shimbun (Tokyo)
    source: sourcesFixturesData[16], // The Asahi Shimbun (Tokyo)
    eventCountry: countriesFixturesData[6], // Japan
    topic: topicsFixturesData[5], // Entertainment
    createdAt: DateTime.now().subtract(const Duration(days: 26)),
    updatedAt: DateTime.now().subtract(const Duration(days: 26)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId85,
    isBreaking: false,
    title: "Tokyo's Tsukiji Outer Market Thrives After Relocation",
    url: 'https://example.com/news/tsukiji-market-thrives',
    imageUrl:
        'https://picsum.photos/seed/kHeadlineId85/800/600', // The Asahi Shimbun (Tokyo)
    source: sourcesFixturesData[16], // The Asahi Shimbun (Tokyo)
    eventCountry: countriesFixturesData[6], // Japan
    topic: topicsFixturesData[8], // Food
    createdAt: DateTime.now().subtract(const Duration(days: 27)),
    updatedAt: DateTime.now().subtract(const Duration(days: 27)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId86,
    isBreaking: false,
    title: 'Mumbai Metro Expands with New Aqua Line',
    url: 'https://example.com/news/mumbai-metro-aqua-line',
    imageUrl:
        'https://picsum.photos/seed/kHeadlineId86/800/600', // Hindustan Times (Mumbai)
    source: sourcesFixturesData[17], // Hindustan Times (Mumbai)
    eventCountry: countriesFixturesData[8], // India
    topic: topicsFixturesData[7], // Travel
    createdAt: DateTime.now().subtract(const Duration(days: 27)),
    updatedAt: DateTime.now().subtract(const Duration(days: 27)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId87,
    isBreaking: false,
    title: 'Bollywood Film Shoots Bring Stars to Mumbai Streets',
    url: 'https://example.com/news/bollywood-mumbai-shoots',
    imageUrl:
        'https://picsum.photos/seed/kHeadlineId87/800/600', // Hindustan Times (Mumbai)
    source: sourcesFixturesData[17], // Hindustan Times (Mumbai)
    eventCountry: countriesFixturesData[8], // India
    topic: topicsFixturesData[5], // Entertainment
    createdAt: DateTime.now().subtract(const Duration(days: 28)),
    updatedAt: DateTime.now().subtract(const Duration(days: 28)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId88,
    isBreaking: false,
    title: 'Mumbai Indians Gear Up for IPL Season',
    url: 'https://example.com/news/mumbai-indians-ipl',
    imageUrl:
        'https://picsum.photos/seed/kHeadlineId88/800/600', // Hindustan Times (Mumbai)
    source: sourcesFixturesData[17], // Hindustan Times (Mumbai)
    eventCountry: countriesFixturesData[8], // India
    topic: topicsFixturesData[1], // Sports
    createdAt: DateTime.now().subtract(const Duration(days: 28)),
    updatedAt: DateTime.now().subtract(const Duration(days: 28)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId89,
    isBreaking: false,
    title: 'BMC Tackles Monsoon Preparedness in Mumbai',
    url: 'https://example.com/news/bmc-monsoon-prep',
    imageUrl:
        'https://picsum.photos/seed/kHeadlineId89/800/600', // Hindustan Times (Mumbai)
    source: sourcesFixturesData[17], // Hindustan Times (Mumbai)
    eventCountry: countriesFixturesData[8], // India
    topic: topicsFixturesData[2], // Politics
    createdAt: DateTime.now().subtract(const Duration(days: 29)),
    updatedAt: DateTime.now().subtract(const Duration(days: 29)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId90,
    isBreaking: false,
    title: "Mumbai's Financial District Sees New Investments",
    url: 'https://example.com/news/mumbai-bkc-investments',
    imageUrl:
        'https://picsum.photos/seed/kHeadlineId90/800/600', // Hindustan Times (Mumbai)
    source: sourcesFixturesData[17], // Hindustan Times (Mumbai)
    eventCountry: countriesFixturesData[8], // India
    topic: topicsFixturesData[6], // Business
    createdAt: DateTime.now().subtract(const Duration(days: 29)),
    updatedAt: DateTime.now().subtract(const Duration(days: 29)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId91,
    isBreaking: false,
    title: 'Rio Carnival Preparations in Full Swing',
    url: 'https://example.com/news/rio-carnival-prep',
    imageUrl:
        'https://picsum.photos/seed/kHeadlineId91/800/600', // O Globo (Rio de Janeiro)
    source: sourcesFixturesData[18], // O Globo (Rio de Janeiro)
    eventCountry: countriesFixturesData[9], // Brazil
    topic: topicsFixturesData[5], // Entertainment
    createdAt: DateTime.now().subtract(const Duration(days: 30)),
    updatedAt: DateTime.now().subtract(const Duration(days: 30)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId92,
    isBreaking: false,
    title: 'Flamengo Wins Key Match at Maracanã Stadium',
    url: 'https://example.com/news/flamengo-maracana-win',
    imageUrl:
        'https://picsum.photos/seed/kHeadlineId92/800/600', // O Globo (Rio de Janeiro)
    source: sourcesFixturesData[18], // O Globo (Rio de Janeiro)
    eventCountry: countriesFixturesData[9], // Brazil
    topic: topicsFixturesData[1], // Sports
    createdAt: DateTime.now().subtract(const Duration(days: 30)),
    updatedAt: DateTime.now().subtract(const Duration(days: 30)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId93,
    isBreaking: false,
    title: 'Security Boosted in Rio Ahead of Major Summit',
    url: 'https://example.com/news/rio-security-boost',
    imageUrl:
        'https://picsum.photos/seed/kHeadlineId93/800/600', // O Globo (Rio de Janeiro)
    source: sourcesFixturesData[18], // O Globo (Rio de Janeiro)
    eventCountry: countriesFixturesData[9], // Brazil
    topic: topicsFixturesData[2], // Politics
    createdAt: DateTime.now().subtract(const Duration(days: 31)),
    updatedAt: DateTime.now().subtract(const Duration(days: 31)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId94,
    isBreaking: false,
    title: 'Sugarloaf Mountain Cable Car Undergoes Modernization',
    url: 'https://example.com/news/sugarloaf-cable-car-update',
    imageUrl:
        'https://picsum.photos/seed/kHeadlineId94/800/600', // O Globo (Rio de Janeiro)
    source: sourcesFixturesData[18], // O Globo (Rio de Janeiro)
    eventCountry: countriesFixturesData[9], // Brazil
    topic: topicsFixturesData[7], // Travel
    createdAt: DateTime.now().subtract(const Duration(days: 31)),
    updatedAt: DateTime.now().subtract(const Duration(days: 31)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId95,
    isBreaking: false,
    title: "Bossa Nova Festival Celebrates Rio's Musical Heritage",
    url: 'https://example.com/news/bossa-nova-festival',
    imageUrl:
        'https://picsum.photos/seed/kHeadlineId95/800/600', // O Globo (Rio de Janeiro)
    source: sourcesFixturesData[18], // O Globo (Rio de Janeiro)
    eventCountry: countriesFixturesData[9], // Brazil
    topic: topicsFixturesData[5], // Entertainment
    createdAt: DateTime.now().subtract(const Duration(days: 32)),
    updatedAt: DateTime.now().subtract(const Duration(days: 32)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId96,
    isBreaking: false,
    title: 'Sagrada Família Nears Completion After 140 Years',
    url: 'https://example.com/news/sagrada-familia-completion',
    imageUrl:
        'https://picsum.photos/seed/kHeadlineId96/800/600', // La Vanguardia (Barcelona)
    source: sourcesFixturesData[19], // La Vanguardia (Barcelona)
    eventCountry: countriesFixturesData[10], // Spain
    topic: topicsFixturesData[5], // Entertainment
    createdAt: DateTime.now().subtract(const Duration(days: 32)),
    updatedAt: DateTime.now().subtract(const Duration(days: 32)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId97,
    isBreaking: false,
    title: 'FC Barcelona Presents New Kit at Camp Nou',
    url: 'https://example.com/news/fcb-new-kit',
    imageUrl:
        'https://picsum.photos/seed/kHeadlineId97/800/600', // La Vanguardia (Barcelona)
    source: sourcesFixturesData[19], // La Vanguardia (Barcelona)
    eventCountry: countriesFixturesData[10], // Spain
    topic: topicsFixturesData[1], // Sports
    createdAt: DateTime.now().subtract(const Duration(days: 33)),
    updatedAt: DateTime.now().subtract(const Duration(days: 33)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId98,
    isBreaking: false,
    title: 'Catalan Government Discusses Tourism Strategy',
    url: 'https://example.com/news/catalan-tourism-strategy',
    imageUrl:
        'https://picsum.photos/seed/kHeadlineId98/800/600', // La Vanguardia (Barcelona)
    source: sourcesFixturesData[19], // La Vanguardia (Barcelona)
    eventCountry: countriesFixturesData[10], // Spain
    topic: topicsFixturesData[2], // Politics
    createdAt: DateTime.now().subtract(const Duration(days: 33)),
    updatedAt: DateTime.now().subtract(const Duration(days: 33)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId99,
    isBreaking: false,
    title: "Barcelona's Tech Scene Booms with New Hub",
    url: 'https://example.com/news/barcelona-tech-hub',
    imageUrl:
        'https://picsum.photos/seed/kHeadlineId99/800/600', // La Vanguardia (Barcelona)
    source: sourcesFixturesData[19], // La Vanguardia (Barcelona)
    eventCountry: countriesFixturesData[10], // Spain
    topic: topicsFixturesData[0], // Technology
    createdAt: DateTime.now().subtract(const Duration(days: 34)),
    updatedAt: DateTime.now().subtract(const Duration(days: 34)),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId100,
    isBreaking: false,
    title: 'La Boqueria Market: A Taste of Barcelona',
    url: 'https://example.com/news/la-boqueria-feature',
    imageUrl:
        'https://picsum.photos/seed/kHeadlineId100/800/600', // La Vanguardia (Barcelona)
    source: sourcesFixturesData[19], // La Vanguardia (Barcelona)
    eventCountry: countriesFixturesData[10], // Spain
    topic: topicsFixturesData[8], // Food
    createdAt: DateTime.now().subtract(const Duration(days: 34)),
    updatedAt: DateTime.now().subtract(const Duration(days: 34)),
    status: ContentStatus.active,
  ),

  // --- National News Outlets (kSourceId21 - kSourceId30) ---
  // ... (Headlines for kSourceId21 to kSourceId30 would follow the same pattern)
  // To keep the response size manageable, I will add a placeholder comment here.
  // In a real implementation, 50 headlines for these 10 sources would be added.
  // Example for USA Today:
  Headline(
    id: kHeadlineId101,
    isBreaking: false,
    title: 'National Parks See Record Visitor Numbers',
    url: 'https://example.com/news/national-parks-visitors',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId101/800/600',
    source: sourcesFixturesData[20], // USA Today
    eventCountry: countriesFixturesData[0], // United States
    topic: topicsFixturesData[7], // Travel
    createdAt: DateTime.now().subtract(const Duration(days: 35)),
    updatedAt: DateTime.now().subtract(const Duration(days: 35)),
    status: ContentStatus.active,
  ),
  // ... 4 more for USA Today

  // Example for The Globe and Mail:
  Headline(
    id: kHeadlineId106,
    isBreaking: false,
    title: 'Canadian Government Announces New Federal Budget',
    url: 'https://example.com/news/canada-federal-budget',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId106/800/600',
    source: sourcesFixturesData[21], // The Globe and Mail
    eventCountry: countriesFixturesData[1], // Canada
    topic: topicsFixturesData[2], // Politics
    createdAt: DateTime.now().subtract(const Duration(days: 36)),
    updatedAt: DateTime.now().subtract(const Duration(days: 36)),
    status: ContentStatus.active,
  ),
  // ... 4 more for The Globe and Mail

  // --- International News Outlets (kSourceId31 - kSourceId40) ---
  // ... (Headlines for kSourceId31 to kSourceId40 would follow the same pattern)
  // Example for CNN International:
  Headline(
    id: kHeadlineId151,
    isBreaking: false,
    title: 'Global Supply Chain Issues Persist',
    url: 'https://example.com/news/global-supply-chain',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId151/800/600',
    source: sourcesFixturesData[30], // CNN International
    eventCountry: countriesFixturesData[0], // United States
    topic: topicsFixturesData[6], // Business
    createdAt: DateTime.now().subtract(const Duration(days: 45)),
    updatedAt: DateTime.now().subtract(const Duration(days: 45)),
    status: ContentStatus.active,
  ),
  // ... 4 more for CNN International

  // --- Specialized Publishers (kSourceId41 - kSourceId50) ---
  // Example for ESPN:
  Headline(
    id: kHeadlineId201,
    isBreaking: false,
    title: 'World Cup Finals: An Unforgettable Match',
    url: 'https://example.com/news/world-cup-final',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId201/800/600',
    source: sourcesFixturesData[40], // ESPN
    eventCountry: countriesFixturesData[0], // United States
    topic: topicsFixturesData[1], // Sports
    createdAt: DateTime.now().subtract(const Duration(days: 55)),
    updatedAt: DateTime.now().subtract(const Duration(days: 55)),
    status: ContentStatus.active,
  ),
  // ... 4 more for ESPN

  // --- Blogs (kSourceId51 - kSourceId60) ---
  // Example for Stratechery:
  Headline(
    id: kHeadlineId251,
    isBreaking: false,
    title: 'The Future of Content and Aggregation',
    url: 'https://example.com/news/stratechery-content-ai',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId251/800/600',
    source: sourcesFixturesData[50], // Stratechery by Ben Thompson
    eventCountry: countriesFixturesData[0], // United States
    topic: topicsFixturesData[0], // Technology
    createdAt: DateTime.now().subtract(const Duration(days: 65)),
    updatedAt: DateTime.now().subtract(const Duration(days: 65)),
    status: ContentStatus.active,
  ),
  // ... 4 more for Stratechery

  // --- Government Sources (kSourceId61 - kSourceId70) ---
  // Example for WhiteHouse.gov:
  Headline(
    id: kHeadlineId301,
    isBreaking: false,
    title: 'President Signs Executive Order on Cybersecurity',
    url: 'https://example.com/news/wh-cyber-order',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId301/800/600',
    source: sourcesFixturesData[60], // WhiteHouse.gov
    eventCountry: countriesFixturesData[0], // United States
    topic: topicsFixturesData[2], // Politics
    createdAt: DateTime.now().subtract(const Duration(days: 75)),
    updatedAt: DateTime.now().subtract(const Duration(days: 75)),
    status: ContentStatus.active,
  ),
  // ... 4 more for WhiteHouse.gov

  // --- Aggregators (kSourceId71 - kSourceId80) ---
  // Example for Google News:
  Headline(
    id: kHeadlineId351,
    isBreaking: false,
    title: 'This Week in Tech: A Google News Roundup',
    url: 'https://example.com/news/gnews-tech-roundup',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId351/800/600',
    source: sourcesFixturesData[70], // Google News
    eventCountry: countriesFixturesData[0], // United States
    topic: topicsFixturesData[0], // Technology
    createdAt: DateTime.now().subtract(const Duration(days: 85)),
    updatedAt: DateTime.now().subtract(const Duration(days: 85)),
    status: ContentStatus.active,
  ),
  // ... 4 more for Google News

  // --- Other (kSourceId81 - kSourceId90) ---
  // Example for PR Newswire:
  Headline(
    id: kHeadlineId401,
    isBreaking: false,
    title: 'Global Tech Corp Announces Record Quarterly Earnings',
    url: 'https://example.com/news/prn-earnings',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId401/800/600',
    source: sourcesFixturesData[80], // PR Newswire
    eventCountry: countriesFixturesData[0], // United States
    topic: topicsFixturesData[6], // Business
    createdAt: DateTime.now().subtract(const Duration(days: 95)),
    updatedAt: DateTime.now().subtract(const Duration(days: 95)),
    status: ContentStatus.active,
  ),
  // Example for The Lancet:
  Headline(
    id: kHeadlineId411,
    isBreaking: false,
    title: 'Phase 3 Trial Results for New Diabetes Drug Published',
    url: 'https://example.com/news/lancet-diabetes-drug',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId411/800/600',
    source: sourcesFixturesData[82], // The Lancet
    eventCountry: countriesFixturesData[2], // United Kingdom
    topic: topicsFixturesData[4], // Health
    createdAt: DateTime.now().subtract(const Duration(days: 100)),
    updatedAt: DateTime.now().subtract(const Duration(days: 100)),
    status: ContentStatus.active,
  ),
];
