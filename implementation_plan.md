# Implementation Plan - Stage 0: Reward System Pivot

This plan executes the architectural pivot to the Time-Based Reward model.

## Phase 1: Foundation (Enums & Models)
- [x] [x] **Create RewardType Enum:** Define `adFree` and `dailyDigest`.
  - **File:** `lib/src/enums/reward_type.dart`
  - **Commit:** `feat(rewards): add RewardType enum`
- [x] [x] **Create RewardsConfig:** Define rules (duration in days, enabled status).
  - **File:** `lib/src/models/config/rewards_config.dart`
  - **Commit:** `feat(config): add RewardsConfig model`
- [x] [x] **Create UserRewards Model:** Define persistence for active rewards.
  - **File:** `lib/src/models/rewards/user_rewards.dart`
  - **Commit:** `feat(rewards): add UserRewards model`
- [x] [x] **Refactor AccessTier:** Remove `premium` tier.
  - **File:** `lib/src/enums/subscription/access_tier.dart`
  - **Commit:** `refactor(auth): remove premium AccessTier`

## Phase 2: Configuration & Cleanup
- [ ] [ ] **Update FeaturesConfig:** Replace `SubscriptionConfig` with `RewardsConfig`.
  - **File:** `lib/src/models/config/features_config.dart`
  - **Commit:** `refactor(config): replace subscription config with rewards config`
- [ ] [ ] **Flatten UserLimitsConfig:** Remove `premium` keys from all limit maps.
  - **File:** `lib/src/models/config/user_limits_config.dart`
  - **Commit:** `refactor(config): flatten user limits to guest/standard`
- [ ] [ ] **Update Remote Config Fixtures:** Reflect new config structure and flattened limits.
  - **File:** `lib/src/fixtures/remote_configs.dart`
  - **Commit:** `chore(fixtures): update remote config fixtures for rewards`
    - `lib/src/models/subscription/plan_details.dart`
  - **Commit:** `refactor(subscription): remove obsolete subscription domain`