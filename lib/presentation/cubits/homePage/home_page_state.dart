part of 'home_page_cubit.dart';

@freezed
class HomePageState with _$HomePageState {
  factory HomePageState({
    required bool ontapSearch,
  }) = _HomePageState;

  factory HomePageState.initial() => HomePageState(
    ontapSearch: false,
  );

  factory HomePageState.fromJson(Map<String, dynamic> json) =>
      _$HomePageStateFromJson(json);
}