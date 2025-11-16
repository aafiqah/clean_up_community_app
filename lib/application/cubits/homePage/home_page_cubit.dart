import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/index.dart';

part 'home_page_cubit.freezed.dart';
part 'home_page_cubit.g.dart';
part 'home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit() : super(HomePageState.initial());

  void onTapSeacrh(bool ontapSearch) {
    emit(state.copyWith(ontapSearch: ontapSearch));
  }

  void onSelectedFilterTypeEvents(int index) {
    final selectedType = CleanupEventDataSource.getEvents()[index].name;
    final newFilteredEvents = selectedType == 'All'
        ? state.allEvents
        : state.allEvents.where((e) => e.eventType == selectedType).toList();

    emit(state.copyWith(
      onSelectedFilterTypeEvents: index,
      filteredEvents: newFilteredEvents,
    ));
  }

  void updateScroll(double offset) {
    emit(state.copyWith(offset: offset));
  }
}
