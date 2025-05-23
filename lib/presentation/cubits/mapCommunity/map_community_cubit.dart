import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_community_cubit.freezed.dart';
part 'map_community_cubit.g.dart';
part 'map_community_state.dart';

class MapCommunityCubit extends Cubit<MapCommunityState> {
  MapCommunityCubit() : super(MapCommunityState.initial());

  void setCurrentLocation(double latitude, double longitude) {
    emit(state.copyWith(latitude: latitude, longitude: longitude));
  }

  void hasLocationPermission(bool hasLocationPermission) {
    emit(state.copyWith(hasLocationPermission: hasLocationPermission));
  }

  void hasGpsPermission(bool hasGpsPermission) {
    emit(state.copyWith(hasGpsPermission: hasGpsPermission));
  }

  void changeSearchPage(bool isSearchPage) {
    emit(state.copyWith(isSearchPage: isSearchPage));
  }

  void changeFilterPage(bool isFilterPage) {
    emit(state.copyWith(isFilterPage: isFilterPage));
  }
}
