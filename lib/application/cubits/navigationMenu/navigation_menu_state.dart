part of 'navigation_menu_cubit.dart';

@freezed
class NavigationMenuState with _$NavigationMenuState {
  factory NavigationMenuState({
    required int selectedIndex,
  }) = _NavigationMenuState;

  factory NavigationMenuState.initial() => NavigationMenuState(
        selectedIndex: 0,
      );

  factory NavigationMenuState.fromJson(Map<String, dynamic> json) => _$NavigationMenuStateFromJson(json);
}