import 'package:core/src/enums/subscription/access_tier.dart';
import 'package:core/src/enums/user_role.dart';
import 'package:core/src/fixtures/fixture_ids.dart';
import 'package:core/src/models/auth/user.dart';

final _now = DateTime.now();

/// A list of initial user data to be loaded into the in-memory user repository.
///
/// This list includes a pre-configured administrator user, which is essential
/// for accessing the dashboard in a development environment, as well as users
/// representing every possible subscription and identity state for demo purposes.
final List<User> usersFixturesData = [
  // --- Main Roles ---
  User(
    id: kAdminUserId,
    email: 'admin@example.com',
    name: 'Admin User',
    role: UserRole.admin,
    tier: AccessTier.premium,
    photoUrl: 'https://i.pravatar.cc/150?u=admin',
    createdAt: _now,
  ),
  User(
    id: kPublisherPremiumId,
    email: 'publisher@example.com',
    name: 'Premium Publisher',
    role: UserRole.publisher,
    tier: AccessTier.premium,
    photoUrl: 'https://i.pravatar.cc/150?u=pub-premium',
    createdAt: _now,
  ),
  User(
    id: kPublisherStandardId,
    email: 'publisher.two@example.com',
    name: 'Standard Publisher',
    role: UserRole.publisher,
    tier: AccessTier.standard,
    photoUrl: 'https://i.pravatar.cc/150?u=pub-standard',
    createdAt: _now,
  ),

  // --- Demo Scenario Users ---
  User(
    id: kGuestUserId,
    email: 'guest-user@anonymous.app',
    name: 'Guest User',
    role: UserRole.user,
    tier: AccessTier.guest,
    isAnonymous: true,
    photoUrl: 'https://i.pravatar.cc/150?u=guest',
    createdAt: _now,
  ),
  User(
    id: kStandardUserId,
    email: 'standard.user@example.com',
    name: 'Standard User',
    role: UserRole.user,
    tier: AccessTier.standard,
    photoUrl: 'https://i.pravatar.cc/150?u=standard',
    createdAt: _now,
  ),
  User(
    id: kPremiumUserId,
    email: 'premium.user@example.com',
    name: 'Premium User',
    role: UserRole.user,
    tier: AccessTier.premium,
    photoUrl: 'https://i.pravatar.cc/150?u=premium',
    createdAt: _now,
  ),
  User(
    id: kGracePeriodUserId,
    email: 'grace.period.user@example.com',
    name: 'Grace Period User',
    role: UserRole.user,
    tier: AccessTier.premium, // Still has premium access
    photoUrl: 'https://i.pravatar.cc/150?u=grace',
    createdAt: _now,
  ),
  User(
    id: kExpiredSubUserId,
    email: 'expired.sub.user@example.com',
    name: 'Expired Sub User',
    role: UserRole.user,
    tier: AccessTier.standard, // Reverted to standard
    photoUrl: 'https://i.pravatar.cc/150?u=expired',
    createdAt: _now,
  ),
];
