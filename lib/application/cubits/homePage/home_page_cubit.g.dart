// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomePageStateImpl _$$HomePageStateImplFromJson(Map<String, dynamic> json) =>
    _$HomePageStateImpl(
      ontapSearch: json['ontapSearch'] as bool,
      onSelectedFilterTypeEvents:
          (json['onSelectedFilterTypeEvents'] as num).toInt(),
      allEvents: (json['allEvents'] as List<dynamic>)
          .map((e) => UpcomingEvent.fromJson(e as Map<String, dynamic>))
          .toList(),
      filteredEvents: (json['filteredEvents'] as List<dynamic>)
          .map((e) => UpcomingEvent.fromJson(e as Map<String, dynamic>))
          .toList(),
      offset: (json['offset'] as num).toDouble(),
    );

Map<String, dynamic> _$$HomePageStateImplToJson(_$HomePageStateImpl instance) =>
    <String, dynamic>{
      'ontapSearch': instance.ontapSearch,
      'onSelectedFilterTypeEvents': instance.onSelectedFilterTypeEvents,
      'allEvents': instance.allEvents,
      'filteredEvents': instance.filteredEvents,
      'offset': instance.offset,
    };
