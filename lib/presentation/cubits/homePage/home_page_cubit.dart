import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_page_cubit.freezed.dart';
part 'home_page_cubit.g.dart';
part 'home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit() : super(HomePageState.initial());

  void onTapSeacrh(bool ontapSearch) {
    emit(state.copyWith(ontapSearch: ontapSearch));
  }

  void onSelectedFilterTypeEvents(int onSelectedFilterTypeEvents) {
    emit(state.copyWith(onSelectedFilterTypeEvents: onSelectedFilterTypeEvents));
  }
}
