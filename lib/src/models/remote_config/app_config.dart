import 'package:equatable/equatable.dart';
import 'package:ht_shared/src/models/remote_config/account_action_config.dart';
import 'package:ht_shared/src/models/remote_config/ad_config.dart';
import 'package:ht_shared/src/models/remote_config/user_preference_config.dart';
import 'package:ht_shared/src/models/remote_config/remote_app_status.dart'; // Added
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'app_config.g.dart';

/// {@template app_config}
/// Represents the overall application configuration.
///
/// This model serves as a central container for various configuration
/// settings that can be fetched and managed via the 'HtDataClient'.
/// It includes settings like user preference limits and can be extended
/// in the future to include other application-wide configurations
/// (e.g., API endpoints, feature flags).
///
/// There should typically be only one instance of this configuration,
/// identified by a fixed ID (e.g., 'app_config').
/// {@endtemplate}
@immutable
@JsonSerializable(
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  includeIfNull: false,
  checked: true,
)
class AppConfig extends Equatable {
  /// {@macro app_config}
  ///
  /// Creates a new instance of [AppConfig].
  ///
  /// An [id] is required, typically a fixed identifier like 'app_config'.
  /// Provides sensible defaults for nested configuration models if not specified.
  const AppConfig({
    required this.id,
    UserPreferenceConfig? userPreferenceLimits,
    AdConfig? adConfig,
    AccountActionConfig? accountActionConfig,
    // --- Kill Switch Fields ---
    this.killSwitchEnabled = false,
    this.appOperationalStatus = RemoteAppStatus.active,
    this.maintenanceMessage,
    this.disabledMessage,
    // --- Force Update Fields ---
    this.minAllowedAppVersion,
    this.latestAppVersion,
    this.updateRequiredMessage,
    this.updateOptionalMessage,
    this.iosStoreUrl,
    this.androidStoreUrl,
  })  : userPreferenceLimits = userPreferenceLimits ??
            const UserPreferenceConfig(
              guestFollowedItemsLimit: 5,
              guestSavedHeadlinesLimit: 10,
              authenticatedFollowedItemsLimit: 15,
              authenticatedSavedHeadlinesLimit: 30,
              premiumFollowedItemsLimit: 30,
              premiumSavedHeadlinesLimit: 100,
            ), // Default limits

        accountActionConfig = accountActionConfig ??
            const AccountActionConfig(
              guestDaysBetweenAccountActions: 7,
              standardUserDaysBetweenAccountActions: 14,
            ),
        // Ensure AdConfig defaults include any new fields if it was also extended
        // For example, if AdConfig was extended like this:
        adConfig = adConfig ??
            const AdConfig(
              guestAdFrequency: 5,
              guestAdPlacementInterval: 3,
              authenticatedAdFrequency: 10,
              authenticatedAdPlacementInterval: 5,
              premiumAdFrequency: 0,
              premiumAdPlacementInterval: 0,
              guestArticlesToReadBeforeShowingInterstitialAds: 10,
              standardUserArticlesToReadBeforeShowingInterstitialAds: 20,
              premiumUserArticlesToReadBeforeShowingInterstitialAds: 50000,
            );

  /// Factory method to create an [AppConfig] instance from a JSON map.
  factory AppConfig.fromJson(Map<String, dynamic> json) =>
      _$AppConfigFromJson(json);

  /// The unique identifier for the application configuration.
  /// Should typically be a fixed value like 'app_config'.
  final String id;

  /// Defines the maximum number of items a user can follow or save,
  /// tiered by user role.
  final UserPreferenceConfig userPreferenceLimits;

  /// Defines configuration settings related to ad injection and display,
  /// tiered by user role.
  final AdConfig adConfig;

  /// Defines configuration settings related to account action display.
  final AccountActionConfig accountActionConfig;

  // --- Kill Switch Fields ---
  /// Master switch to enable or disable the kill switch functionality.
  final bool killSwitchEnabled;

  /// Current operational status of the app (e.g., active, maintenance, disabled).
  final RemoteAppStatus appOperationalStatus;

  /// Message to display when the app is in maintenance mode.
  final String? maintenanceMessage;

  /// Message to display when the app is disabled.
  final String? disabledMessage;

  // --- Force Update Fields ---
  /// The minimum version of the app that is allowed to run.
  /// Versions below this will be forced to update. (e.g., "1.2.0")
  final String? minAllowedAppVersion;

  /// The latest available version of the app. (e.g., "1.5.0")
  final String? latestAppVersion;

  /// Message to display when a force update is required.
  final String? updateRequiredMessage;

  /// Message to display for an optional update.
  final String? updateOptionalMessage;

  /// URL to the app on the Apple App Store.
  final String? iosStoreUrl;

  /// URL to the app on the Google Play Store.
  final String? androidStoreUrl;

  /// Converts this [AppConfig] instance to a JSON map.
  Map<String, dynamic> toJson() => _$AppConfigToJson(this);

  /// Creates a copy of this [AppConfig] but with the given fields replaced
  /// with the new values.
  AppConfig copyWith({
    String? id,
    UserPreferenceConfig? userPreferenceLimits,
    AdConfig? adConfig,
    AccountActionConfig? accountActionConfig,
    // Kill Switch
    bool? killSwitchEnabled,
    RemoteAppStatus? appOperationalStatus,
    String? maintenanceMessage,
    String? disabledMessage,
    // Force Update
    String? minAllowedAppVersion,
    String? latestAppVersion,
    String? updateRequiredMessage,
    String? updateOptionalMessage,
    String? iosStoreUrl,
    String? androidStoreUrl,
  }) {
    return AppConfig(
      id: id ?? this.id,
      userPreferenceLimits: userPreferenceLimits ?? this.userPreferenceLimits,
      adConfig: adConfig ?? this.adConfig,
      accountActionConfig: accountActionConfig ?? this.accountActionConfig,
      // Kill Switch
      killSwitchEnabled: killSwitchEnabled ?? this.killSwitchEnabled,
      appOperationalStatus: appOperationalStatus ?? this.appOperationalStatus,
      maintenanceMessage: maintenanceMessage ?? this.maintenanceMessage,
      disabledMessage: disabledMessage ?? this.disabledMessage,
      // Force Update
      minAllowedAppVersion: minAllowedAppVersion ?? this.minAllowedAppVersion,
      latestAppVersion: latestAppVersion ?? this.latestAppVersion,
      updateRequiredMessage:
          updateRequiredMessage ?? this.updateRequiredMessage,
      updateOptionalMessage:
          updateOptionalMessage ?? this.updateOptionalMessage,
      iosStoreUrl: iosStoreUrl ?? this.iosStoreUrl,
      androidStoreUrl: androidStoreUrl ?? this.androidStoreUrl,
    );
  }

  @override
  List<Object?> get props => [
        // Changed to List<Object?> to allow nulls
        id,
        userPreferenceLimits,
        adConfig,
        accountActionConfig,
        // Kill Switch
        killSwitchEnabled,
        appOperationalStatus,
        maintenanceMessage,
        disabledMessage,
        // Force Update
        minAllowedAppVersion,
        latestAppVersion,
        updateRequiredMessage,
        updateOptionalMessage,
        iosStoreUrl,
        androidStoreUrl,
      ];

  @override
  bool get stringify => true;
}
