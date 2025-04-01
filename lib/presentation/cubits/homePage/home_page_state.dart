part of 'home_page_cubit.dart';

@freezed
class HomePageState with _$HomePageState {
  factory HomePageState({
    required bool ontapSearch,
    required int onSelectedFilterTypeEvents,
  }) = _HomePageState;

  factory HomePageState.initial() => HomePageState(
        ontapSearch: false,
        onSelectedFilterTypeEvents: 0,
      );

  factory HomePageState.fromJson(Map<String, dynamic> json) =>
      _$HomePageStateFromJson(json);
}
