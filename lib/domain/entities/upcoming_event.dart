class UpcomingEvent {
  final String eventName;
  final String eventDate;
  final String eventTime;
  final UpcomingEventLocation eventLocation;
  final String imagePath;
  final int participantCount;
  final int totalParticipant;

  UpcomingEvent({
    required this.eventName,
    required this.eventDate,
    required this.eventTime,
    required this.eventLocation,
    required this.imagePath,
    required this.participantCount,
    required this.totalParticipant,
  });
}

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
}
