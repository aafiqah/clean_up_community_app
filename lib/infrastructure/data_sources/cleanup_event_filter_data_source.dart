import '../../domain/index.dart';

class CleanupEventDataSource {
  static List<CleanupEventFilter> getEvents() {
    return [
      CleanupEventFilter(name: 'All'),
      CleanupEventFilter(name: '🏖 Beach'),
      CleanupEventFilter(name: '🏞 River'),
      CleanupEventFilter(name: '🏫 School'),
      CleanupEventFilter(name: '🏠 House'),
      CleanupEventFilter(name: '🌳 Park'),
      CleanupEventFilter(name: '🏢 Office'),
    ];
  }
}
