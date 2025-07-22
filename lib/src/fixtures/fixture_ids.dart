/// A centralized collection of fixture IDs used across the demo data.
///
/// These IDs are 24-character hexadecimal strings, making them compatible
/// with MongoDB's ObjectId format. Using constants ensures that relationships
/// between fixtures (e.g., a user's settings pointing to a user's ID) are
/// maintained consistently.

// --- Singleton and User-Specific IDs ---

// ignore_for_file: dangling_library_doc_comments

/// ID for the admin user fixture.
const kAdminUserId = '6643b1b7a4a4e6e1a8e7b1c1';

/// ID for the singleton RemoteConfig fixture.
const kRemoteConfigId = '6643b1b7a4a4e6e1a8e7b1c2';

/// ID for the singleton DashboardSummary fixture.
const kDashboardSummaryId = '6643b1b7a4a4e6e1a8e7b1c3';

// --- Country Fixture IDs ---
const kCountryId1 = '6643b21ca4a4e6e1a8e7b1c4'; // US
const kCountryId2 = '6643b21ca4a4e6e1a8e7b1c5'; // CA
const kCountryId3 = '6643b21ca4a4e6e1a8e7b1c6'; // GB
const kCountryId4 = '6643b21ca4a4e6e1a8e7b1c7'; // DE
const kCountryId5 = '6643b21ca4a4e6e1a8e7b1c8'; // FR
const kCountryId6 = '6643b21ca4a4e6e1a8e7b1c9'; // AU
const kCountryId7 = '6643b21ca4a4e6e1a8e7b1ca'; // JP
const kCountryId8 = '6643b21ca4a4e6e1a8e7b1cb'; // CN
const kCountryId9 = '6643b21ca4a4e6e1a8e7b1cc'; // IN
const kCountryId10 = '6643b21ca4a4e6e1a8e7b1cd'; // BR

// --- Topic Fixture IDs ---
const kTopicId1 = '6643b25da4a4e6e1a8e7b1ce'; // Technology
const kTopicId2 = '6643b25da4a4e6e1a8e7b1cf'; // Sports
const kTopicId3 = '6643b25da4a4e6e1a8e7b1d0'; // Politics
const kTopicId4 = '6643b25da4a4e6e1a8e7b1d1'; // Science
const kTopicId5 = '6643b25da4a4e6e1a8e7b1d2'; // Health
const kTopicId6 = '6643b25da4a4e6e1a8e7b1d3'; // Entertainment
const kTopicId7 = '6643b25da4a4e6e1a8e7b1d4'; // Business
const kTopicId8 = '6643b25da4a4e6e1a8e7b1d5'; // Travel
const kTopicId9 = '6643b25da4a4e6e1a8e7b1d6'; // Food
const kTopicId10 = '6643b25da4a4e6e1a8e7b1d7'; // Education

// --- Source Fixture IDs ---
const kSourceId1 = '6643b28ba4a4e6e1a8e7b1d8'; // TechCrunch
const kSourceId2 = '6643b28ba4a4e6e1a8e7b1d9'; // BBC News
const kSourceId3 = '6643b28ba4a4e6e1a8e7b1da'; // The New York Times
const kSourceId4 = '6643b28ba4a4e6e1a8e7b1db'; // The Guardian
const kSourceId5 = '6643b28ba4a4e6e1a8e7b1dc'; // CNN
const kSourceId6 = '6643b28ba4a4e6e1a8e7b1dd'; // Reuters
const kSourceId7 = '6643b28ba4a4e6e1a8e7b1de'; // Al Jazeera English
const kSourceId8 = '6643b28ba4a4e6e1a8e7b1df'; // Xinhua News Agency
const kSourceId9 = '6643b28ba4a4e6e1a8e7b1e0'; // The Times of India
const kSourceId10 = '6643b28ba4a4e6e1a8e7b1e1'; // Folha de S.Paulo

// --- Headline Fixture IDs (First 10 for brevity) ---
const kHeadlineId1 = '6643b2cda4a4e6e1a8e7b1e2';
const kHeadlineId2 = '6643b2cda4a4e6e1a8e7b1e3';
const kHeadlineId3 = '6643b2cda4a4e6e1a8e7b1e4';
const kHeadlineId4 = '6643b2cda4a4e6e1a8e7b1e5';
const kHeadlineId5 = '6643b2cda4a4e6e1a8e7b1e6';
const kHeadlineId6 = '6643b2cda4a4e6e1a8e7b1e7';
const kHeadlineId7 = '6643b2cda4a4e6e1a8e7b1e8';
const kHeadlineId8 = '6643b2cda4a4e6e1a8e7b1e9';
const kHeadlineId9 = '6643b2cda4a4e6e1a8e7b1ea';
const kHeadlineId10 = '6643b2cda4a4e6e1a8e7b1eb';
const kHeadlineId11 = '6643b2cda4a4e6e1a8e7b1ec';
const kHeadlineId12 = '6643b2cda4a4e6e1a8e7b1ed';
const kHeadlineId13 = '6643b2cda4a4e6e1a8e7b1ee';
const kHeadlineId14 = '6643b2cda4a4e6e1a8e7b1ef';
const kHeadlineId15 = '6643b2cda4a4e6e1a8e7b1f0';
const kHeadlineId16 = '6643b2cda4a4e6e1a8e7b1f1';
const kHeadlineId17 = '6643b2cda4a4e6e1a8e7b1f2';
const kHeadlineId18 = '6643b2cda4a4e6e1a8e7b1f3';
const kHeadlineId19 = '6643b2cda4a4e6e1a8e7b1f4';
const kHeadlineId20 = '6643b2cda4a4e6e1a8e7b1f5';
const kHeadlineId21 = '6643b2cda4a4e6e1a8e7b1f6';
const kHeadlineId22 = '6643b2cda4a4e6e1a8e7b1f7';
const kHeadlineId23 = '6643b2cda4a4e6e1a8e7b1f8';
const kHeadlineId24 = '6643b2cda4a4e6e1a8e7b1f9';
const kHeadlineId25 = '6643b2cda4a4e6e1a8e7b1fa';
const kHeadlineId26 = '6643b2cda4a4e6e1a8e7b1fb';
const kHeadlineId27 = '6643b2cda4a4e6e1a8e7b1fc';
const kHeadlineId28 = '6643b2cda4a4e6e1a8e7b1fd';
const kHeadlineId29 = '6643b2cda4a4e6e1a8e7b1fe';
const kHeadlineId30 = '6643b2cda4a4e6e1a8e7b1ff';
const kHeadlineId31 = '6643b2cda4a4e6e1a8e7b200';
const kHeadlineId32 = '6643b2cda4a4e6e1a8e7b201';
const kHeadlineId33 = '6643b2cda4a4e6e1a8e7b202';
const kHeadlineId34 = '6643b2cda4a4e6e1a8e7b203';
const kHeadlineId35 = '6643b2cda4a4e6e1a8e7b204';
const kHeadlineId36 = '6643b2cda4a4e6e1a8e7b205';
const kHeadlineId37 = '6643b2cda4a4e6e1a8e7b206';
const kHeadlineId38 = '6643b2cda4a4e6e1a8e7b207';
const kHeadlineId39 = '6643b2cda4a4e6e1a8e7b208';
const kHeadlineId40 = '6643b2cda4a4e6e1a8e7b209';
const kHeadlineId41 = '6643b2cda4a4e6e1a8e7b20a';
const kHeadlineId42 = '6643b2cda4a4e6e1a8e7b20b';
const kHeadlineId43 = '6643b2cda4a4e6e1a8e7b20c';
const kHeadlineId44 = '6643b2cda4a4e6e1a8e7b20d';
const kHeadlineId45 = '6643b2cda4a4e6e1a8e7b20e';
const kHeadlineId46 = '6643b2cda4a4e6e1a8e7b20f';
const kHeadlineId47 = '6643b2cda4a4e6e1a8e7b210';
const kHeadlineId48 = '6643b2cda4a4e6e1a8e7b211';
const kHeadlineId49 = '6643b2cda4a4e6e1a8e7b212';
const kHeadlineId50 = '6643b2cda4a4e6e1a8e7b213';
