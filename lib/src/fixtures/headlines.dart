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
    title: 'AI Breakthrough: New Model Achieves Human-Level Performance',
    excerpt:
        'Researchers announce a significant leap in artificial intelligence, with a new model demonstrating unprecedented capabilities.',
    url: 'https://example.com/news/ai-breakthrough-1',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId1/800/600',
    source: sourcesFixturesData[0], // TechCrunch
    eventCountry: countriesFixturesData[0], // United States
    topic: topicsFixturesData[0], // Technology
    createdAt: DateTime.now().subtract(Duration.zero),
    updatedAt: DateTime.now().subtract(Duration.zero),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId2,
    title: 'Local Team Wins Championship in Thrilling Final',
    excerpt:
        'The city celebrates as the underdog team clinches the national championship in a nail-biting finish.',
    url: 'https://example.com/news/sports-championship-2',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId2/800/600',
    source: sourcesFixturesData[1], // BBC News
    eventCountry: countriesFixturesData[1], // United Kingdom
    topic: topicsFixturesData[1], // Sports
    createdAt: DateTime.now().subtract(Duration.zero),
    updatedAt: DateTime.now().subtract(Duration.zero),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId3,
    title: 'Global Leaders Meet to Discuss Climate Change Policies',
    excerpt:
        'A summit of world leaders convenes to address urgent climate change issues and propose new international agreements.',
    url: 'https://example.com/news/politics-climate-3',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId3/800/600',
    source: sourcesFixturesData[2], // The New York Times
    eventCountry: countriesFixturesData[2], // Canada
    topic: topicsFixturesData[2], // Politics
    createdAt: DateTime.now().subtract(Duration.zero),
    updatedAt: DateTime.now().subtract(Duration.zero),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId4,
    title: 'New Planet Discovered in Distant Galaxy',
    excerpt:
        'Astronomers confirm the existence of a new exoplanet, sparking excitement in the scientific community.',
    url: 'https://example.com/news/science-planet-4',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId4/800/600',
    source: sourcesFixturesData[3], // The Guardian
    eventCountry: countriesFixturesData[3], // Australia
    topic: topicsFixturesData[3], // Science
    createdAt: DateTime.now().subtract(Duration.zero),
    updatedAt: DateTime.now().subtract(Duration.zero),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId5,
    title: 'Breakthrough in Cancer Research Offers New Hope',
    excerpt:
        'A new study reveals a promising treatment approach for a common type of cancer, moving closer to a cure.',
    url: 'https://example.com/news/health-cancer-5',
    imageUrl: 'https://picsum.photos/seed/kHeadlineId5/800/600',
    source: sourcesFixturesData[4], // CNN
    eventCountry: countriesFixturesData[4], // Germany
    topic: topicsFixturesData[4], // Health
    createdAt: DateTime.now().subtract(Duration.zero),
    updatedAt: DateTime.now().subtract(Duration.zero),
    status: ContentStatus.active,
  ),
  Headline(
    id: kHeadlineId6,
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
];
