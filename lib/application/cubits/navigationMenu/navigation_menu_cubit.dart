import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigation_menu_cubit.freezed.dart';
part 'navigation_menu_cubit.g.dart';
part 'navigation_menu_state.dart';

class NavigationMenuCubit extends Cubit<NavigationMenuState> {
  NavigationMenuCubit() : super(NavigationMenuState.initial());

  void selectIndex(int index) => emit(state.copyWith(selectedIndex: index));
}
