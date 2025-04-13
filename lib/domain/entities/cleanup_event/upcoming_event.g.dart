// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upcoming_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpcomingEvent _$UpcomingEventFromJson(Map<String, dynamic> json) =>
    UpcomingEvent(
      eventName: json['eventName'] as String,
      eventDate: json['eventDate'] as String,
      eventTimeStart: json['eventTimeStart'] as String,
      eventTimeEnd: json['eventTimeEnd'] as String,
      eventLocation: UpcomingEventLocation.fromJson(
          json['eventLocation'] as Map<String, dynamic>),
      imagePath: json['imagePath'] as String,
      eventType: json['eventType'] as String,
      participantCount: (json['participantCount'] as num).toInt(),
      totalParticipant: (json['totalParticipant'] as num).toInt(),
    );

Map<String, dynamic> _$UpcomingEventToJson(UpcomingEvent instance) =>
    <String, dynamic>{
      'eventName': instance.eventName,
      'eventDate': instance.eventDate,
      'eventTimeStart': instance.eventTimeStart,
      'eventTimeEnd': instance.eventTimeEnd,
      'eventLocation': instance.eventLocation,
      'imagePath': instance.imagePath,
      'eventType': instance.eventType,
      'participantCount': instance.participantCount,
      'totalParticipant': instance.totalParticipant,
    };

UpcomingEventLocation _$UpcomingEventLocationFromJson(
        Map<String, dynamic> json) =>
    UpcomingEventLocation(
      eventAddressOne: json['eventAddressOne'] as String,
      eventAddressTwo: json['eventAddressTwo'] as String,
      eventState: json['eventState'] as String,
      eventPasscode: json['eventPasscode'] as String,
      eventCity: json['eventCity'] as String,
      eventLatitude: json['eventLatitude'] as String,
      eventLongitude: json['eventLongitude'] as String,
    );

Map<String, dynamic> _$UpcomingEventLocationToJson(
        UpcomingEventLocation instance) =>
    <String, dynamic>{
      'eventAddressOne': instance.eventAddressOne,
      'eventAddressTwo': instance.eventAddressTwo,
      'eventState': instance.eventState,
      'eventPasscode': instance.eventPasscode,
      'eventCity': instance.eventCity,
      'eventLatitude': instance.eventLatitude,
      'eventLongitude': instance.eventLongitude,
    };
