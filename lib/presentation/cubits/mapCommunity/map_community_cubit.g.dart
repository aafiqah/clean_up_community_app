// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_community_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MapCommunityStateImpl _$$MapCommunityStateImplFromJson(
        Map<String, dynamic> json) =>
    _$MapCommunityStateImpl(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      isSearchPage: json['isSearchPage'] as bool,
      isFilterPage: json['isFilterPage'] as bool,
      hasLocationPermission: json['hasLocationPermission'] as bool,
      hasGpsPermission: json['hasGpsPermission'] as bool,
    );

Map<String, dynamic> _$$MapCommunityStateImplToJson(
        _$MapCommunityStateImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'isSearchPage': instance.isSearchPage,
      'isFilterPage': instance.isFilterPage,
      'hasLocationPermission': instance.hasLocationPermission,
      'hasGpsPermission': instance.hasGpsPermission,
    };
