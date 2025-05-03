import '../../../domain/index.dart';

enum CleanupEventType {
  all,
  beach,
  river,
  school,
  house,
  park,
  office,
  highway;

  String title() {
    switch (this) {
      case CleanupEventType.all:
        return 'All';
      case CleanupEventType.beach:
        return '🏖 Beach';
      case CleanupEventType.river:
        return '🏞 River';
      case CleanupEventType.school:
        return '🏫 School';
      case CleanupEventType.house:
        return '🏠 House';
      case CleanupEventType.park:
        return '🌳 Park';
      case CleanupEventType.office:
        return '🏢 Office';
      case CleanupEventType.highway:
        return '🛣️ Highway';
    }
  }
}

class CleanupEventDataSource {
  static List<CleanupEventFilter> getEvents() {
    return [
      CleanupEventFilter(name: CleanupEventType.all.title()),
      CleanupEventFilter(name: CleanupEventType.beach.title()),
      CleanupEventFilter(name: CleanupEventType.river.title()),
      CleanupEventFilter(name: CleanupEventType.school.title()),
      CleanupEventFilter(name: CleanupEventType.house.title()),
      CleanupEventFilter(name: CleanupEventType.park.title()),
      CleanupEventFilter(name: CleanupEventType.office.title()),
      CleanupEventFilter(name: CleanupEventType.highway.title()),
    ];
  }
}
