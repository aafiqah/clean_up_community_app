part of 'home_page_cubit.dart';

@freezed
class HomePageState with _$HomePageState {
  factory HomePageState({
    required bool ontapSearch,
    required int onSelectedFilterTypeEvents,
    required List<UpcomingEvent> allEvents,
    required List<UpcomingEvent> filteredEvents,
  }) = _HomePageState;

  factory HomePageState.initial() => HomePageState(
        ontapSearch: false,
        onSelectedFilterTypeEvents: 0,
        allEvents: UpcomingEventDataSource.getEvents(),
        filteredEvents: UpcomingEventDataSource.getEvents(),
      );

  factory HomePageState.fromJson(Map<String, dynamic> json) => _$HomePageStateFromJson(json);
}
