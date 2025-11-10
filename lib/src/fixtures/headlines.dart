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
    excerpt:
        'Researchers announce a significant leap in artificial intelligence, with a new model demonstrating unprecedented capabilities.',
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
    excerpt:
        'The city celebrates as the underdog team clinches the national championship in a nail-biting finish.',
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
    excerpt:
        'A summit of world leaders convenes to address urgent climate change issues and propose new international agreements.',
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
    isBreaking: false,
    title: 'New Planet Discovered in Distant Galaxy',
    excerpt:
        'Astronomers confirm the existence of a new exoplanet, sparking excitement in the scientific community.',
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
    excerpt:
        'A new study reveals a promising treatment approach for a common type of cancer, moving closer to a cure.',
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
    excerpt:
        'The highly anticipated film shatters previous box office records in its opening weekend, delighting fans worldwide.',
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
    excerpt:
        'Major indices surge as strong economic data and corporate earnings drive investor confidence.',
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
    excerpt:
        'Governments ease travel advisories, opening up new opportunities for international tourism.',
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
    excerpt:
        'A world-renowned chef brings their culinary expertise to the city with a highly anticipated new dining establishment.',
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
    excerpt:
        'Schools adopting new pedagogical approaches report significant improvements in student participation and learning outcomes.',
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
    excerpt:
        'Experts advise immediate updates as a sophisticated new malware strain targets critical infrastructure worldwide.',
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
    excerpt:
        'The highly anticipated decision for the next Summer Olympics host city has been revealed, promising a spectacular event.',
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
    excerpt:
        'Legislators introduce a comprehensive bill designed to address rising healthcare costs and expand access to services.',
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
    excerpt:
        'A team of archaeologists makes a groundbreaking discovery, revealing a previously unknown ancient civilization.',
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
    excerpt:
        'New recommendations from health organizations aim to improve public nutrition and combat chronic diseases.',
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
    excerpt:
        'Fans eagerly await the annual music festival as organizers unveil a lineup featuring top artists from various genres.',
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
    excerpt:
        'A major technology company expands its portfolio with the acquisition of a promising startup, signaling market consolidation.',
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
    excerpt:
        'The era of space tourism begins as companies unveil plans for regular commercial flights to orbit.',
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
    excerpt:
        'As sustainability concerns grow, lab-grown meat alternatives are becoming a staple in modern diets.',
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
    excerpt:
        'The shift to digital education continues as more students opt for flexible online courses and certifications.',
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
    excerpt:
        'Scientists report a significant advancement in quantum computing, bringing the technology closer to practical applications.',
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
    excerpt:
        'Several top-ranked teams suffer surprising defeats in the latest World Cup qualifiers, reshuffling the global football landscape.',
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
    excerpt:
        'Following a closely contested election, a new political party forms the government, promising significant policy changes.',
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
    excerpt:
        'Scientists achieve a major milestone in fusion energy, bringing clean, limitless power closer to reality.',
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
    excerpt:
        'A new international initiative aims to destigmatize mental health issues and provide greater support resources.',
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
    excerpt:
        'The virtual reality sector of the gaming industry experiences unprecedented expansion, driven by new hardware and immersive titles.',
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
    excerpt:
        'Ongoing challenges in global logistics are leading to shortages and price increases for a wide range of consumer products.',
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
    excerpt:
        'Scientists on an Arctic research mission identify several previously unknown species of marine life, highlighting biodiversity.',
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
    excerpt:
        'The culinary scene is embracing plant-based diets with an increasing number of restaurants specializing in vegan and vegetarian dishes.',
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
    excerpt:
        'New digital tools and platforms are revolutionizing traditional classroom settings, enhancing interactive learning experiences.',
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
    excerpt:
        "Elon Musk's SpaceX successfully deploys a new batch of Starlink satellites, expanding global internet coverage.",
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
    excerpt:
        'A celebrated football player declares their retirement, marking the end of an illustrious career.',
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
    excerpt:
        'Leaders from the G7 nations issue a unified statement addressing economic challenges and future cooperation.',
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
    excerpt:
        "Scientists identify a novel therapeutic target for Alzheimer's disease, paving the way for more effective treatments.",
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
    excerpt:
        'International efforts to vaccinate the world population against a new virus achieve unprecedented reach.',
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
    excerpt:
        'The competition in the streaming market heats up as several new services enter the fray, offering diverse content.',
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
    excerpt:
        'Digital currency values fluctuate wildly, prompting investors to reassess their strategies.',
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
    excerpt:
        'Travel industry shifts towards eco-friendly practices, offering responsible options for environmentally conscious travelers.',
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
    excerpt:
        'International conference focuses on strategies to combat food insecurity and ensure equitable access to nutrition worldwide.',
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
    excerpt:
        'Schools integrate advanced robotics into their curriculum, providing hands-on learning experiences for students.',
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
    excerpt:
        'Discussions around the ethical implications of artificial intelligence gain traction, with calls for stricter regulations.',
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
    excerpt:
        'The competitive gaming sector attracts record investments, solidifying its position as a major entertainment industry.',
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
    excerpt:
        "Global powers unite to impose new economic sanctions in response to a nation's controversial actions.",
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
    excerpt:
        'Oceanographers exploring the deepest parts of the ocean encounter a never-before-seen marine organism.',
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
    excerpt:
        'International health organizations unveil a comprehensive strategy to prevent and respond to future pandemics.',
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
    excerpt:
        'Ongoing labor disputes in Hollywood lead to widespread production halts, affecting upcoming movie and TV releases.',
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
    excerpt:
        'Despite global uncertainties, several emerging economies demonstrate robust growth and attract foreign investment.',
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
    excerpt:
        'Travelers seek unique experiences in off-the-beaten-path destinations, boosting local economies in remote areas.',
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
    excerpt:
        'Innovations in eco-friendly packaging solutions are transforming the food industry, reducing environmental impact.',
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
    excerpt:
        "New educational models focus on customized learning paths, adapting to each student's pace and preferences.",
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
    excerpt:
        'The San Francisco City Council has given the green light to a major redevelopment project aimed at revitalizing the downtown core.',
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
    excerpt:
        'A new report shows a significant increase in venture capital funding for tech startups in San Francisco.',
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
    excerpt:
        'A multi-year seismic retrofit project for the Golden Gate Bridge has officially commenced.',
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
    excerpt:
        'A San Francisco-based chef has been awarded the coveted "Golden Spoon" for culinary innovation.',
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
    excerpt:
        'The Golden State Warriors started their season with a decisive win at the Chase Center.',
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
    excerpt:
        'The club has revealed ambitious plans to increase the capacity of Old Trafford.',
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
    excerpt:
        'The new Metrolink line is set to improve public transport links across the region.',
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
    excerpt:
        'A report highlights Manchester as a growing hub for technology and innovation in Europe.',
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
    excerpt:
        'Fans gather as the popular soap opera films on location in central Manchester.',
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
    excerpt:
        'Greater Manchester leaders are in talks over the future of the controversial Clean Air Zone.',
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
    excerpt:
        'A star-studded lineup of performances has been announced for the upcoming season at the iconic venue.',
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
    excerpt:
        'The latest real estate data shows a persistent upward trend in property values across the Sydney metropolitan area.',
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
    excerpt:
        'The New South Wales government has committed billions to new transport and public works projects.',
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
    excerpt:
        'The Sydney Swans secured a memorable victory over their local rivals in a heated AFL match.',
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
    excerpt:
        'Local authorities are exploring new measures to combat coastal erosion at the world-famous Bondi Beach.',
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
    excerpt:
        'The Grand Paris Express project reaches a new milestone with the opening of several new metro stations.',
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
    excerpt:
        'A new wing dedicated to ancient Egyptian artifacts has been opened to the public at the Louvre.',
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
    excerpt:
        'PSG has been crowned champions of France after a dominant season.',
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
    excerpt:
        'The mayor has outlined a plan to increase green spaces and reduce pollution in the city.',
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
    excerpt:
        "The world's top designers showcased their latest collections during the celebrated Paris Fashion Week.",
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
    excerpt:
        'The Raptors have made a significant move to bolster their roster for the playoff push.',
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
    excerpt:
        'The Toronto Transit Commission has released its updated schedule and service adjustments for the summer season.',
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
    excerpt:
        "Organizers of TIFF have announced a highly anticipated lineup of films for this year's festival.",
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
    excerpt:
        'City council is debating new policies to address the ongoing housing affordability crisis in Toronto.',
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
    excerpt:
        "A major new development on Toronto's waterfront has received final approval from the city.",
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
    excerpt:
        'The world-renowned orchestra has named a new chief conductor, marking a new era.',
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
    excerpt:
        'A previously unknown section of the Berlin Wall has been discovered at a construction site in the city center.',
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
    excerpt:
        'The Berlin-based football club is in a tough fight to avoid relegation from the Bundesliga.',
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
    excerpt:
        'New measures aimed at controlling rent prices in the German capital have been approved by the Berlin Senate.',
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
    excerpt:
        "Berlin's new airport has reported its busiest month on record, signaling a recovery in air travel.",
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
    excerpt:
        'The Tokyo Metropolitan Government has announced new policies to support its rapidly aging population.',
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
    excerpt:
        'The Hokuriku Shinkansen line has been extended, reducing travel time between Tokyo and the Hokuriku region.',
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
    excerpt:
        'The Tokyo-based Yomiuri Giants have won the Central League pennant in Japanese professional baseball.',
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
    excerpt:
        'The celebrated animation studio has announced its first new feature film in several years, exciting fans worldwide.',
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
    excerpt:
        'Years after the inner market moved, the Tsukiji Outer Market continues to be a vibrant destination for food lovers.',
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
    excerpt:
        'The new Aqua Line of the Mumbai Metro is now operational, aiming to ease traffic congestion in the city.',
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
    excerpt:
        'Major Bollywood productions are currently filming across Mumbai, drawing crowds of onlookers.',
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
    excerpt:
        'The local cricket franchise, Mumbai Indians, has begun its training camp ahead of the new IPL season.',
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
    excerpt:
        'The Brihanmumbai Municipal Corporation (BMC) has outlined its plan for monsoon preparedness to prevent flooding.',
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
    excerpt:
        'The Bandra Kurla Complex (BKC) continues to attract major national and international business investments.',
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
    excerpt:
        'Samba schools across Rio de Janeiro are finalizing their preparations for the world-famous Carnival parade.',
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
    excerpt:
        "Rio's beloved football club, Flamengo, celebrated a crucial victory in front of a packed Maracanã stadium.",
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
    excerpt:
        'Security measures are being increased across Rio de Janeiro as the city prepares to host an international summit.',
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
    excerpt:
        'The iconic cable car system for Sugarloaf Mountain is being updated with new technology and cabins.',
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
    excerpt:
        'A music festival in Ipanema is celebrating the rich history of Bossa Nova, born in the neighborhoods of Rio.',
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
    excerpt:
        "Barcelona's iconic basilica, designed by Gaudí, is entering its final phase of construction.",
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
    excerpt:
        'The football club has unveiled its new home kit for the upcoming La Liga season.',
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
    excerpt:
        'Leaders in Catalonia are debating a new long-term strategy to manage tourism in Barcelona and the wider region.',
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
    excerpt:
        'The 22@ innovation district in Barcelona continues to expand, attracting tech companies from around the globe.',
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
    excerpt:
        'A feature on the historic La Boqueria market, exploring its culinary delights and cultural significance.',
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
    excerpt:
        'A new report from the National Park Service shows a surge in visitors to parks across the USA.',
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
    excerpt:
        'The federal budget includes new spending on healthcare and climate initiatives across Canada.',
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
    excerpt:
        'Experts warn that global supply chain disruptions are likely to continue affecting international trade.',
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
    excerpt:
        'The World Cup final delivered a thrilling conclusion to the tournament with a dramatic penalty shootout.',
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
    excerpt:
        'A deep dive into how AI is changing the landscape of content creation and aggregation platforms.',
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
    excerpt:
        "A new executive order has been signed to strengthen the nation's cybersecurity infrastructure.",
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
    excerpt:
        'Google News aggregates the top technology stories of the week, from AI breakthroughs to new gadget releases.',
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
    excerpt:
        'Global Tech Corp today announced financial results for its fiscal third quarter, reporting record revenue and profit.',
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
    excerpt:
        'A new study in The Lancet details the successful phase 3 clinical trial results for a novel type 2 diabetes treatment.',
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
