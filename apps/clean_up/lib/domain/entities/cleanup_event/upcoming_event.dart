import 'package:json_annotation/json_annotation.dart';

part 'upcoming_event.g.dart';

@JsonSerializable()
class UpcomingEvent {
  final String eventName;
  final String eventDate;
  final String eventTimeStart;
  final String eventTimeEnd;
  final UpcomingEventLocation eventLocation;
  final String imagePath;
  final String eventType;
  final int participantCount;
  final int totalParticipant;

  UpcomingEvent({
    required this.eventName,
    required this.eventDate,
    required this.eventTimeStart,
    required this.eventTimeEnd,
    required this.eventLocation,
    required this.imagePath,
    required this.eventType,
    required this.participantCount,
    required this.totalParticipant,
  });

  factory UpcomingEvent.fromJson(Map<String, dynamic> json) =>
      _$UpcomingEventFromJson(json);
  Map<String, dynamic> toJson() => _$UpcomingEventToJson(this);
}

@JsonSerializable()
class UpcomingEventLocation {
  final String eventAddressOne;
  final String eventAddressTwo;
  final String eventState;
  final String eventPasscode;
  final String eventCity;
  final String eventLatitude;
  final String eventLongitude;

  UpcomingEventLocation({
    required this.eventAddressOne,
    required this.eventAddressTwo,
    required this.eventState,
    required this.eventPasscode,
    required this.eventCity,
    required this.eventLatitude,
    required this.eventLongitude,
  });

  factory UpcomingEventLocation.fromJson(Map<String, dynamic> json) =>
      _$UpcomingEventLocationFromJson(json);
  Map<String, dynamic> toJson() => _$UpcomingEventLocationToJson(this);
}
