part of 'map_community_cubit.dart';

@freezed
class MapCommunityState with _$MapCommunityState {
  factory MapCommunityState({
    required double latitude,
    required double longitude,
    required bool isSearchPage,
    required bool isFilterPage,
    required bool hasLocationPermission,
    required bool hasGpsPermission,
  }) = _MapCommunityState;

  factory MapCommunityState.initial() => MapCommunityState(
        latitude: 0.0,
        longitude: 0.0,
        isSearchPage: false,
        isFilterPage: false,
        hasLocationPermission: false,
        hasGpsPermission: false,
      );

  factory MapCommunityState.fromJson(Map<String, dynamic> json) =>
      _$MapCommunityStateFromJson(json);
}

