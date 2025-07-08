import 'package:ht_shared/src/enums/enums.dart';
import 'package:ht_shared/src/fixtures/categories.dart';
import 'package:ht_shared/src/fixtures/sources.dart';
import 'package:ht_shared/src/models/entities/headline.dart';

/// A list of predefined headlines for fixture data.
final headlinesFixturesData = <Headline>[
  Headline(
    id: 'headline-1',
    title: 'AI Breakthrough: New Model Achieves Human-Level Performance',
    excerpt:
        'Researchers announce a significant leap in artificial intelligence, with a new model demonstrating unprecedented capabilities.',
    url: 'https://example.com/news/ai-breakthrough-1',
    imageUrl: 'https://example.com/images/ai-breakthrough.jpg',
    source: sourcesFixturesData[0], // TechCrunch
    category: categoriesFixturesData[0], // Technology
    createdAt: DateTime.now().subtract(Duration.zero),
    updatedAt: DateTime.now().subtract(Duration.zero),
    status: ContentStatus.active,
  ),
  Headline(
    id: 'headline-2',
    title: 'Local Team Wins Championship in Thrilling Final',
    excerpt:
        'The city celebrates as the underdog team clinches the national championship in a nail-biting finish.',
    url: 'https://example.com/news/sports-championship-2',
    imageUrl: 'https://example.com/images/sports-win.jpg',
    source: sourcesFixturesData[1], // BBC News
    category: categoriesFixturesData[1], // Sports
    createdAt: DateTime.now().subtract(Duration.zero),
    updatedAt: DateTime.now().subtract(Duration.zero),
    status: ContentStatus.active,
  ),
  Headline(
    id: 'headline-3',
    title: 'Global Leaders Meet to Discuss Climate Change Policies',
    excerpt:
        'A summit of world leaders convenes to address urgent climate change issues and propose new international agreements.',
    url: 'https://example.com/news/politics-climate-3',
    imageUrl: 'https://example.com/images/climate-summit.jpg',
    source: sourcesFixturesData[2], // The New York Times
    category: categoriesFixturesData[2], // Politics
    createdAt: DateTime.now().subtract(Duration.zero),
    updatedAt: DateTime.now().subtract(Duration.zero),
    status: ContentStatus.active,
  ),
  Headline(
    id: 'headline-4',
    title: 'New Planet Discovered in Distant Galaxy',
    excerpt:
        'Astronomers confirm the existence of a new exoplanet, sparking excitement in the scientific community.',
    url: 'https://example.com/news/science-planet-4',
    imageUrl: 'https://example.com/images/new-planet.jpg',
    source: sourcesFixturesData[3], // The Guardian
    category: categoriesFixturesData[3], // Science
    createdAt: DateTime.now().subtract(Duration.zero),
    updatedAt: DateTime.now().subtract(Duration.zero),
    status: ContentStatus.active,
  ),
  Headline(
    id: 'headline-5',
    title: 'Breakthrough in Cancer Research Offers New Hope',
    excerpt:
        'A new study reveals a promising treatment approach for a common type of cancer, moving closer to a cure.',
    url: 'https://example.com/news/health-cancer-5',
    imageUrl: 'https://example.com/images/cancer-research.jpg',
    source: sourcesFixturesData[4], // CNN
    category: categoriesFixturesData[4], // Health
    createdAt: DateTime.now().subtract(Duration.zero),
    updatedAt: DateTime.now().subtract(Duration.zero),
    status: ContentStatus.active,
  ),
  Headline(
    id: 'headline-6',
    title: 'Blockbuster Movie Breaks Box Office Records',
    excerpt:
        'The highly anticipated film shatters previous box office records in its opening weekend, delighting fans worldwide.',
    url: 'https://example.com/news/entertainment-movie-6',
    imageUrl: 'https://example.com/images/movie-record.jpg',
    source: sourcesFixturesData[5], // Reuters
    category: categoriesFixturesData[5], // Entertainment
    createdAt: DateTime.now().subtract(const Duration(days: 1)),
    updatedAt: DateTime.now().subtract(const Duration(days: 1)),
    status: ContentStatus.active,
  ),
  Headline(
    id: 'headline-7',
    title: 'Stock Market Reaches All-Time High Amid Economic Boom',
    excerpt:
        'Major indices surge as strong economic data and corporate earnings drive investor confidence.',
    url: 'https://example.com/news/business-market-7',
    imageUrl: 'https://example.com/images/stock-market.jpg',
    source: sourcesFixturesData[6], // Al Jazeera English
    category: categoriesFixturesData[6], // Business
    createdAt: DateTime.now().subtract(const Duration(days: 1)),
    updatedAt: DateTime.now().subtract(const Duration(days: 1)),
    status: ContentStatus.active,
  ),
  Headline(
    id: 'headline-8',
    title: 'New Travel Restrictions Lifted for Popular Destinations',
    excerpt:
        'Governments ease travel advisories, opening up new opportunities for international tourism.',
    url: 'https://example.com/news/travel-restrictions-8',
    imageUrl: 'https://example.com/images/travel-lifted.jpg',
    source: sourcesFixturesData[7], // Xinhua News Agency
    category: categoriesFixturesData[7], // Travel
    createdAt: DateTime.now().subtract(const Duration(days: 1)),
    updatedAt: DateTime.now().subtract(const Duration(days: 1)),
    status: ContentStatus.active,
  ),
  Headline(
    id: 'headline-9',
    title: 'Michelin Star Chef Opens New Restaurant in City Center',
    excerpt:
        'A world-renowned chef brings their culinary expertise to the city with a highly anticipated new dining establishment.',
    url: 'https://example.com/news/food-restaurant-9',
    imageUrl: 'https://example.com/images/new-restaurant.jpg',
    source: sourcesFixturesData[8], // The Times of India
    category: categoriesFixturesData[8], // Food
    createdAt: DateTime.now().subtract(const Duration(days: 1)),
    updatedAt: DateTime.now().subtract(const Duration(days: 1)),
    status: ContentStatus.active,
  ),
  Headline(
    id: 'headline-10',
    title: 'Innovative Teaching Methods Boost Student Engagement',
    excerpt:
        'Schools adopting new pedagogical approaches report significant improvements in student participation and learning outcomes.',
    url: 'https://example.com/news/education-methods-10',
    imageUrl: 'https://example.com/images/education-methods.jpg',
    source: sourcesFixturesData[9], // Folha de S.Paulo
    category: categoriesFixturesData[9], // Education
    createdAt: DateTime.now().subtract(const Duration(days: 1)),
    updatedAt: DateTime.now().subtract(const Duration(days: 1)),
    status: ContentStatus.active,
  ),
  Headline(
    id: 'headline-11',
    title: 'Cybersecurity Firms Warn of New Global Threat',
    excerpt:
        'Experts advise immediate updates as a sophisticated new malware strain targets critical infrastructure worldwide.',
    url: 'https://example.com/news/cybersecurity-threat-11',
    imageUrl: 'https://example.com/images/cyber-threat.jpg',
    source: sourcesFixturesData[0], // TechCrunch
    category: categoriesFixturesData[0], // Technology
    createdAt: DateTime.now().subtract(const Duration(days: 2)),
    updatedAt: DateTime.now().subtract(const Duration(days: 2)),
    status: ContentStatus.active,
  ),
  Headline(
    id: 'headline-12',
    title: 'Olympics Committee Announces Host City for 2032 Games',
    excerpt:
        'The highly anticipated decision for the next Summer Olympics host city has been revealed, promising a spectacular event.',
    url: 'https://example.com/news/sports-olympics-12',
    imageUrl: 'https://example.com/images/olympics-announcement.jpg',
    source: sourcesFixturesData[1], // BBC News
    category: categoriesFixturesData[1], // Sports
    createdAt: DateTime.now().subtract(const Duration(days: 2)),
    updatedAt: DateTime.now().subtract(const Duration(days: 2)),
    status: ContentStatus.active,
  ),
  Headline(
    id: 'headline-13',
    title: 'New Bill Aims to Reform Healthcare System',
    excerpt:
        'Legislators introduce a comprehensive bill designed to address rising healthcare costs and expand access to services.',
    url: 'https://example.com/news/politics-healthcare-13',
    imageUrl: 'https://example.com/images/healthcare-bill.jpg',
    source: sourcesFixturesData[2], // The New York Times
    category: categoriesFixturesData[4], // Health
    createdAt: DateTime.now().subtract(const Duration(days: 2)),
    updatedAt: DateTime.now().subtract(const Duration(days: 2)),
    status: ContentStatus.active,
  ),
  Headline(
    id: 'headline-14',
    title: 'Archaeologists Uncover Ancient City Ruins',
    excerpt:
        'A team of archaeologists makes a groundbreaking discovery, revealing a previously unknown ancient civilization.',
    url: 'https://example.com/news/science-archaeology-14',
    imageUrl: 'https://example.com/images/ancient-city.jpg',
    source: sourcesFixturesData[3], // The Guardian
    category: categoriesFixturesData[3], // Science
    createdAt: DateTime.now().subtract(const Duration(days: 2)),
    updatedAt: DateTime.now().subtract(const Duration(days: 2)),
    status: ContentStatus.active,
  ),
  Headline(
    id: 'headline-15',
    title: 'Dietary Guidelines Updated for Public Health',
    excerpt:
        'New recommendations from health organizations aim to improve public nutrition and combat chronic diseases.',
    url: 'https://example.com/news/health-diet-15',
    imageUrl: 'https://example.com/images/dietary-guidelines.jpg',
    source: sourcesFixturesData[4], // CNN
    category: categoriesFixturesData[4], // Health
    createdAt: DateTime.now().subtract(const Duration(days: 2)),
    updatedAt: DateTime.now().subtract(const Duration(days: 2)),
    status: ContentStatus.active,
  ),
  Headline(
    id: 'headline-16',
    title: 'Music Festival Announces Star-Studded Lineup',
    excerpt:
        'Fans eagerly await the annual music festival as organizers unveil a lineup featuring top artists from various genres.',
    url: 'https://example.com/news/entertainment-music-16',
    imageUrl: 'https://example.com/images/music-festival.jpg',
    source: sourcesFixturesData[5], // Reuters
    category: categoriesFixturesData[5], // Entertainment
    createdAt: DateTime.now().subtract(const Duration(days: 3)),
    updatedAt: DateTime.now().subtract(const Duration(days: 3)),
    status: ContentStatus.active,
  ),
  Headline(
    id: 'headline-17',
    title: 'Tech Giant Acquires Startup in Multi-Billion Dollar Deal',
    excerpt:
        'A major technology company expands its portfolio with the acquisition of a promising startup, signaling market consolidation.',
    url: 'https://example.com/news/business-acquisition-17',
    imageUrl: 'https://example.com/images/tech-acquisition.jpg',
    source: sourcesFixturesData[6], // Al Jazeera English
    category: categoriesFixturesData[6], // Business
    createdAt: DateTime.now().subtract(const Duration(days: 3)),
    updatedAt: DateTime.now().subtract(const Duration(days: 3)),
    status: ContentStatus.active,
  ),
  Headline(
    id: 'headline-18',
    title: 'Space Tourism Takes Off: First Commercial Flights Announced',
    excerpt:
        'The era of space tourism begins as companies unveil plans for regular commercial flights to orbit.',
    url: 'https://example.com/news/travel-space-18',
    imageUrl: 'https://example.com/images/space-tourism.jpg',
    source: sourcesFixturesData[7], // Xinhua News Agency
    category: categoriesFixturesData[7], // Travel
    createdAt: DateTime.now().subtract(const Duration(days: 3)),
    updatedAt: DateTime.now().subtract(const Duration(days: 3)),
    status: ContentStatus.active,
  ),
  Headline(
    id: 'headline-19',
    title: 'Future of Food: Lab-Grown Meat Gains Popularity',
    excerpt:
        'As sustainability concerns grow, lab-grown meat alternatives are becoming a staple in modern diets.',
    url: 'https://example.com/news/food-lab-meat-19',
    imageUrl: 'https://example.com/images/lab-meat.jpg',
    source: sourcesFixturesData[8], // The Times of India
    category: categoriesFixturesData[8], // Food
    createdAt: DateTime.now().subtract(const Duration(days: 3)),
    updatedAt: DateTime.now().subtract(const Duration(days: 3)),
    status: ContentStatus.active,
  ),
  Headline(
    id: 'headline-20',
    title: 'Online Learning Platforms See Surge in Enrollment',
    excerpt:
        'The shift to digital education continues as more students opt for flexible online courses and certifications.',
    url: 'https://example.com/news/education-online-20',
    imageUrl: 'https://example.com/images/online-learning.jpg',
    source: sourcesFixturesData[9], // Folha de S.Paulo
    category: categoriesFixturesData[9], // Education
    createdAt: DateTime.now().subtract(const Duration(days: 3)),
    updatedAt: DateTime.now().subtract(const Duration(days: 3)),
    status: ContentStatus.active,
  ),
  Headline(
    id: 'headline-21',
    title: 'Quantum Computing Achieves New Milestone',
    excerpt:
        'Scientists report a significant advancement in quantum computing, bringing the technology closer to practical applications.',
    url: 'https://example.com/news/tech-quantum-21',
    imageUrl: 'https://example.com/images/quantum-computing.jpg',
    source: sourcesFixturesData[0], // TechCrunch
    category: categoriesFixturesData[0], // Technology
    createdAt: DateTime.now().subtract(const Duration(days: 4)),
    updatedAt: DateTime.now().subtract(const Duration(days: 4)),
    status: ContentStatus.active,
  ),
  Headline(
    id: 'headline-22',
    title: 'World Cup Qualifiers: Unexpected Upsets Shake Rankings',
    excerpt:
        'Several top-ranked teams suffer surprising defeats in the latest World Cup qualifiers, reshuffling the global football landscape.',
    url: 'https://example.com/news/sports-worldcup-22',
    imageUrl: 'https://example.com/images/worldcup-upset.jpg',
    source: sourcesFixturesData[1], // BBC News
    category: categoriesFixturesData[1], // Sports
    createdAt: DateTime.now().subtract(const Duration(days: 4)),
    updatedAt: DateTime.now().subtract(const Duration(days: 4)),
    status: ContentStatus.active,
  ),
  Headline(
    id: 'headline-23',
    title: 'Election Results: New Government Takes Power',
    excerpt:
        'Following a closely contested election, a new political party forms the government, promising significant policy changes.',
    url: 'https://example.com/news/politics-election-23',
    imageUrl: 'https://example.com/images/election-results.jpg',
    source: sourcesFixturesData[2], // The New York Times
    category: categoriesFixturesData[2], // Politics
    createdAt: DateTime.now().subtract(const Duration(days: 4)),
    updatedAt: DateTime.now().subtract(const Duration(days: 4)),
    status: ContentStatus.active,
  ),
  Headline(
    id: 'headline-24',
    title: 'Breakthrough in Fusion Energy Research Announced',
    excerpt:
        'Scientists achieve a major milestone in fusion energy, bringing clean, limitless power closer to reality.',
    url: 'https://example.com/news/science-fusion-24',
    imageUrl: 'https://example.com/images/fusion-energy.jpg',
    source: sourcesFixturesData[3], // The Guardian
    category: categoriesFixturesData[3], // Science
    createdAt: DateTime.now().subtract(const Duration(days: 4)),
    updatedAt: DateTime.now().subtract(const Duration(days: 4)),
    status: ContentStatus.active,
  ),
  Headline(
    id: 'headline-25',
    title: 'Mental Health Awareness Campaign Launched Globally',
    excerpt:
        'A new international initiative aims to destigmatize mental health issues and provide greater support resources.',
    url: 'https://example.com/news/health-mental-25',
    imageUrl: 'https://example.com/images/mental-health.jpg',
    source: sourcesFixturesData[4], // CNN
    category: categoriesFixturesData[4], // Health
    createdAt: DateTime.now().subtract(const Duration(days: 4)),
    updatedAt: DateTime.now().subtract(const Duration(days: 4)),
    status: ContentStatus.active,
  ),
  Headline(
    id: 'headline-26',
    title: 'Gaming Industry Sees Record Growth in Virtual Reality',
    excerpt:
        'The virtual reality sector of the gaming industry experiences unprecedented expansion, driven by new hardware and immersive titles.',
    url: 'https://example.com/news/entertainment-vr-26',
    imageUrl: 'https://example.com/images/vr-gaming.jpg',
    source: sourcesFixturesData[5], // Reuters
    category: categoriesFixturesData[5], // Entertainment
    createdAt: DateTime.now().subtract(const Duration(days: 5)),
    updatedAt: DateTime.now().subtract(const Duration(days: 5)),
    status: ContentStatus.active,
  ),
  Headline(
    id: 'headline-27',
    title: 'Global Supply Chain Disruptions Impacting Consumer Goods',
    excerpt:
        'Ongoing challenges in global logistics are leading to shortages and price increases for a wide range of consumer products.',
    url: 'https://example.com/news/business-supplychain-27',
    imageUrl: 'https://example.com/images/supply-chain.jpg',
    source: sourcesFixturesData[6], // Al Jazeera English
    category: categoriesFixturesData[6], // Business
    createdAt: DateTime.now().subtract(const Duration(days: 5)),
    updatedAt: DateTime.now().subtract(const Duration(days: 5)),
    status: ContentStatus.active,
  ),
  Headline(
    id: 'headline-28',
    title: 'Arctic Expedition Discovers New Marine Species',
    excerpt:
        'Scientists on an Arctic research mission identify several previously unknown species of marine life, highlighting biodiversity.',
    url: 'https://example.com/news/travel-arctic-28',
    imageUrl: 'https://example.com/images/arctic-discovery.jpg',
    source: sourcesFixturesData[7], // Xinhua News Agency
    category: categoriesFixturesData[7], // Travel
    createdAt: DateTime.now().subtract(const Duration(days: 5)),
    updatedAt: DateTime.now().subtract(const Duration(days: 5)),
    status: ContentStatus.active,
  ),
  Headline(
    id: 'headline-29',
    title: 'Rise of Plant-Based Cuisine: New Restaurants Open',
    excerpt:
        'The culinary scene is embracing plant-based diets with an increasing number of restaurants specializing in vegan and vegetarian dishes.',
    url: 'https://example.com/news/food-plantbased-29',
    imageUrl: 'https://example.com/images/plant-based.jpg',
    source: sourcesFixturesData[8], // The Times of India
    category: categoriesFixturesData[8], // Food
    createdAt: DateTime.now().subtract(const Duration(days: 5)),
    updatedAt: DateTime.now().subtract(const Duration(days: 5)),
    status: ContentStatus.active,
  ),
  Headline(
    id: 'headline-30',
    title: 'Education Technology Transforms Classrooms',
    excerpt:
        'New digital tools and platforms are revolutionizing traditional classroom settings, enhancing interactive learning experiences.',
    url: 'https://example.com/news/education-edtech-30',
    imageUrl: 'https://example.com/images/edtech.jpg',
    source: sourcesFixturesData[9], // Folha de S.Paulo
    category: categoriesFixturesData[9], // Education
    createdAt: DateTime.now().subtract(const Duration(days: 5)),
    updatedAt: DateTime.now().subtract(const Duration(days: 5)),
    status: ContentStatus.active,
  ),
  Headline(
    id: 'headline-31',
    title: 'SpaceX Launches New Satellite Constellation',
    excerpt:
        "Elon Musk's SpaceX successfully deploys a new batch of Starlink satellites, expanding global internet coverage.",
    url: 'https://example.com/news/tech-spacex-31',
    imageUrl: 'https://example.com/images/spacex-launch.jpg',
    source: sourcesFixturesData[0], // TechCrunch
    category: categoriesFixturesData[0], // Technology
    createdAt: DateTime.now().subtract(const Duration(days: 6)),
    updatedAt: DateTime.now().subtract(const Duration(days: 6)),
    status: ContentStatus.active,
  ),
  Headline(
    id: 'headline-32',
    title: 'Football Legend Announces Retirement',
    excerpt:
        'A celebrated football player declares their retirement, marking the end of an illustrious career.',
    url: 'https://example.com/news/sports-retirement-32',
    imageUrl: 'https://example.com/images/football-retirement.jpg',
    source: sourcesFixturesData[1], // BBC News
    category: categoriesFixturesData[1], // Sports
    createdAt: DateTime.now().subtract(const Duration(days: 6)),
    updatedAt: DateTime.now().subtract(const Duration(days: 6)),
    status: ContentStatus.active,
  ),
  Headline(
    id: 'headline-33',
    title: 'G7 Summit Concludes with Joint Statement on Global Economy',
    excerpt:
        'Leaders from the G7 nations issue a unified statement addressing economic challenges and future cooperation.',
    url: 'https://example.com/news/politics-g7-33',
    imageUrl: 'https://example.com/images/g7-summit.jpg',
    source: sourcesFixturesData[2], // The New York Times
    category: categoriesFixturesData[2], // Politics
    createdAt: DateTime.now().subtract(const Duration(days: 6)),
    updatedAt: DateTime.now().subtract(const Duration(days: 6)),
    status: ContentStatus.active,
  ),
  Headline(
    id: 'headline-34',
    title: "Breakthrough in Alzheimer's Research Offers New Treatment Path",
    excerpt:
        "Scientists identify a novel therapeutic target for Alzheimer's disease, paving the way for more effective treatments.",
    url: 'https://example.com/news/science-alzheimers-34',
    imageUrl: 'https://example.com/images/alzheimers-research.jpg',
    source: sourcesFixturesData[3], // The Guardian
    category: categoriesFixturesData[4], // Health
    createdAt: DateTime.now().subtract(const Duration(days: 6)),
    updatedAt: DateTime.now().subtract(const Duration(days: 6)),
    status: ContentStatus.active,
  ),
  Headline(
    id: 'headline-35',
    title: 'Global Vaccination Campaign Reaches Billions',
    excerpt:
        'International efforts to vaccinate the world population against a new virus achieve unprecedented reach.',
    url: 'https://example.com/news/health-vaccine-35',
    imageUrl: 'https://example.com/images/vaccine-campaign.jpg',
    source: sourcesFixturesData[4], // CNN
    category: categoriesFixturesData[4], // Health
    createdAt: DateTime.now().subtract(const Duration(days: 6)),
    updatedAt: DateTime.now().subtract(const Duration(days: 6)),
    status: ContentStatus.active,
  ),
  Headline(
    id: 'headline-36',
    title: 'Streaming Wars Intensify with New Platform Launches',
    excerpt:
        'The competition in the streaming market heats up as several new services enter the fray, offering diverse content.',
    url: 'https://example.com/news/entertainment-streaming-36',
    imageUrl: 'https://example.com/images/streaming-wars.jpg',
    source: sourcesFixturesData[5], // Reuters
    category: categoriesFixturesData[5], // Entertainment
    createdAt: DateTime.now().subtract(const Duration(days: 7)),
    updatedAt: DateTime.now().subtract(const Duration(days: 7)),
    status: ContentStatus.active,
  ),
  Headline(
    id: 'headline-37',
    title: 'Cryptocurrency Market Experiences Major Volatility',
    excerpt:
        'Digital currency values fluctuate wildly, prompting investors to reassess their strategies.',
    url: 'https://example.com/news/business-crypto-37',
    imageUrl: 'https://example.com/images/crypto-volatility.jpg',
    source: sourcesFixturesData[6], // Al Jazeera English
    category: categoriesFixturesData[0], // Technology
    createdAt: DateTime.now().subtract(const Duration(days: 7)),
    updatedAt: DateTime.now().subtract(const Duration(days: 7)),
    status: ContentStatus.active,
  ),
  Headline(
    id: 'headline-38',
    title: 'Sustainable Tourism Initiatives Gain Momentum',
    excerpt:
        'Travel industry shifts towards eco-friendly practices, offering responsible options for environmentally conscious travelers.',
    url: 'https://example.com/news/travel-sustainable-38',
    imageUrl: 'https://example.com/images/sustainable-tourism.jpg',
    source: sourcesFixturesData[7], // Xinhua News Agency
    category: categoriesFixturesData[7], // Travel
    createdAt: DateTime.now().subtract(const Duration(days: 7)),
    updatedAt: DateTime.now().subtract(const Duration(days: 7)),
    status: ContentStatus.active,
  ),
  Headline(
    id: 'headline-39',
    title: 'Food Security Summit Addresses Global Hunger',
    excerpt:
        'International conference focuses on strategies to combat food insecurity and ensure equitable access to nutrition worldwide.',
    url: 'https://example.com/news/food-security-39',
    imageUrl: 'https://example.com/images/food-security.jpg',
    source: sourcesFixturesData[8], // The Times of India
    category: categoriesFixturesData[8], // Food
    createdAt: DateTime.now().subtract(const Duration(days: 7)),
    updatedAt: DateTime.now().subtract(const Duration(days: 7)),
    status: ContentStatus.active,
  ),
  Headline(
    id: 'headline-40',
    title: 'Robotics in Education: New Tools for Learning',
    excerpt:
        'Schools integrate advanced robotics into their curriculum, providing hands-on learning experiences for students.',
    url: 'https://example.com/news/education-robotics-40',
    imageUrl: 'https://example.com/images/robotics-education.jpg',
    source: sourcesFixturesData[9], // Folha de S.Paulo
    category: categoriesFixturesData[9], // Education
    createdAt: DateTime.now().subtract(const Duration(days: 7)),
    updatedAt: DateTime.now().subtract(const Duration(days: 7)),
    status: ContentStatus.active,
  ),
  Headline(
    id: 'headline-41',
    title: 'AI Ethics Debate Intensifies Among Tech Leaders',
    excerpt:
        'Discussions around the ethical implications of artificial intelligence gain traction, with calls for stricter regulations.',
    url: 'https://example.com/news/tech-ethics-41',
    imageUrl: 'https://example.com/images/ai-ethics.jpg',
    source: sourcesFixturesData[0], // TechCrunch
    category: categoriesFixturesData[0], // Technology
    createdAt: DateTime.now().subtract(const Duration(days: 8)),
    updatedAt: DateTime.now().subtract(const Duration(days: 8)),
    status: ContentStatus.active,
  ),
  Headline(
    id: 'headline-42',
    title: 'Esports Industry Sees Massive Investment Boom',
    excerpt:
        'The competitive gaming sector attracts record investments, solidifying its position as a major entertainment industry.',
    url: 'https://example.com/news/sports-esports-42',
    imageUrl: 'https://example.com/images/esports-boom.jpg',
    source: sourcesFixturesData[1], // BBC News
    category: categoriesFixturesData[1], // Sports
    createdAt: DateTime.now().subtract(const Duration(days: 8)),
    updatedAt: DateTime.now().subtract(const Duration(days: 8)),
    status: ContentStatus.active,
  ),
  Headline(
    id: 'headline-43',
    title: 'International Sanctions Imposed on Rogue State',
    excerpt:
        "Global powers unite to impose new economic sanctions in response to a nation's controversial actions.",
    url: 'https://example.com/news/politics-sanctions-43',
    imageUrl: 'https://example.com/images/sanctions.jpg',
    source: sourcesFixturesData[2], // The New York Times
    category: categoriesFixturesData[2], // Politics
    createdAt: DateTime.now().subtract(const Duration(days: 8)),
    updatedAt: DateTime.now().subtract(const Duration(days: 8)),
    status: ContentStatus.active,
  ),
  Headline(
    id: 'headline-44',
    title: 'New Species of Deep-Sea Creature Discovered',
    excerpt:
        'Oceanographers exploring the deepest parts of the ocean encounter a never-before-seen marine organism.',
    url: 'https://example.com/news/science-deepsea-44',
    imageUrl: 'https://example.com/images/deepsea-creature.jpg',
    source: sourcesFixturesData[3], // The Guardian
    category: categoriesFixturesData[3], // Science
    createdAt: DateTime.now().subtract(const Duration(days: 8)),
    updatedAt: DateTime.now().subtract(const Duration(days: 8)),
    status: ContentStatus.active,
  ),
  Headline(
    id: 'headline-45',
    title: 'Global Health Crisis: New Pandemic Preparedness Plan',
    excerpt:
        'International health organizations unveil a comprehensive strategy to prevent and respond to future pandemics.',
    url: 'https://example.com/news/health-pandemic-45',
    imageUrl: 'https://example.com/images/pandemic-plan.jpg',
    source: sourcesFixturesData[4], // CNN
    category: categoriesFixturesData[4], // Health
    createdAt: DateTime.now().subtract(const Duration(days: 8)),
    updatedAt: DateTime.now().subtract(const Duration(days: 8)),
    status: ContentStatus.active,
  ),
  Headline(
    id: 'headline-46',
    title: 'Hollywood Strikes Continue: Impact on Film Production',
    excerpt:
        'Ongoing labor disputes in Hollywood lead to widespread production halts, affecting upcoming movie and TV releases.',
    url: 'https://example.com/news/entertainment-strikes-46',
    imageUrl: 'https://example.com/images/hollywood-strikes.jpg',
    source: sourcesFixturesData[5], // Reuters
    category: categoriesFixturesData[5], // Entertainment
    createdAt: DateTime.now().subtract(const Duration(days: 9)),
    updatedAt: DateTime.now().subtract(const Duration(days: 9)),
    status: ContentStatus.active,
  ),
  Headline(
    id: 'headline-47',
    title: 'Emerging Markets Show Strong Economic Resilience',
    excerpt:
        'Despite global uncertainties, several emerging economies demonstrate robust growth and attract foreign investment.',
    url: 'https://example.com/news/business-emerging-47',
    imageUrl: 'https://example.com/images/emerging-markets.jpg',
    source: sourcesFixturesData[6], // Al Jazeera English
    category: categoriesFixturesData[6], // Business
    createdAt: DateTime.now().subtract(const Duration(days: 9)),
    updatedAt: DateTime.now().subtract(const Duration(days: 9)),
    status: ContentStatus.active,
  ),
  Headline(
    id: 'headline-48',
    title: 'Adventure Tourism Booms in Remote Regions',
    excerpt:
        'Travelers seek unique experiences in off-the-beaten-path destinations, boosting local economies in remote areas.',
    url: 'https://example.com/news/travel-adventure-48',
    imageUrl: 'https://example.com/images/adventure-tourism.jpg',
    source: sourcesFixturesData[7], // Xinhua News Agency
    category: categoriesFixturesData[7], // Travel
    createdAt: DateTime.now().subtract(const Duration(days: 9)),
    updatedAt: DateTime.now().subtract(const Duration(days: 9)),
    status: ContentStatus.active,
  ),
  Headline(
    id: 'headline-49',
    title: 'The Rise of Sustainable Food Packaging',
    excerpt:
        'Innovations in eco-friendly packaging solutions are transforming the food industry, reducing environmental impact.',
    url: 'https://example.com/news/food-packaging-49',
    imageUrl: 'https://example.com/images/sustainable-packaging.jpg',
    source: sourcesFixturesData[8], // The Times of India
    category: categoriesFixturesData[8], // Food
    createdAt: DateTime.now().subtract(const Duration(days: 9)),
    updatedAt: DateTime.now().subtract(const Duration(days: 9)),
    status: ContentStatus.active,
  ),
  Headline(
    id: 'headline-50',
    title: 'Personalized Learning: Tailoring Education to Individual Needs',
    excerpt:
        "New educational models focus on customized learning paths, adapting to each student's pace and preferences.",
    url: 'https://example.com/news/education-personalized-50',
    imageUrl: 'https://example.com/images/personalized-learning.jpg',
    source: sourcesFixturesData[9], // Folha de S.Paulo
    category: categoriesFixturesData[9], // Education
    createdAt: DateTime.now().subtract(const Duration(days: 9)),
    updatedAt: DateTime.now().subtract(const Duration(days: 9)),
    status: ContentStatus.active,
  ),
];
