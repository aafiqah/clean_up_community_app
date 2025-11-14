// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_community_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MapCommunityState _$MapCommunityStateFromJson(Map<String, dynamic> json) {
  return _MapCommunityState.fromJson(json);
}

/// @nodoc
mixin _$MapCommunityState {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  bool get isSearchPage => throw _privateConstructorUsedError;
  bool get isFilterPage => throw _privateConstructorUsedError;
  bool get hasLocationPermission => throw _privateConstructorUsedError;
  bool get hasGpsPermission => throw _privateConstructorUsedError;

  /// Serializes this MapCommunityState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MapCommunityState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MapCommunityStateCopyWith<MapCommunityState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapCommunityStateCopyWith<$Res> {
  factory $MapCommunityStateCopyWith(
          MapCommunityState value, $Res Function(MapCommunityState) then) =
      _$MapCommunityStateCopyWithImpl<$Res, MapCommunityState>;
  @useResult
  $Res call(
      {double latitude,
      double longitude,
      bool isSearchPage,
      bool isFilterPage,
      bool hasLocationPermission,
      bool hasGpsPermission});
}

/// @nodoc
class _$MapCommunityStateCopyWithImpl<$Res, $Val extends MapCommunityState>
    implements $MapCommunityStateCopyWith<$Res> {
  _$MapCommunityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MapCommunityState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? isSearchPage = null,
    Object? isFilterPage = null,
    Object? hasLocationPermission = null,
    Object? hasGpsPermission = null,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      isSearchPage: null == isSearchPage
          ? _value.isSearchPage
          : isSearchPage // ignore: cast_nullable_to_non_nullable
              as bool,
      isFilterPage: null == isFilterPage
          ? _value.isFilterPage
          : isFilterPage // ignore: cast_nullable_to_non_nullable
              as bool,
      hasLocationPermission: null == hasLocationPermission
          ? _value.hasLocationPermission
          : hasLocationPermission // ignore: cast_nullable_to_non_nullable
              as bool,
      hasGpsPermission: null == hasGpsPermission
          ? _value.hasGpsPermission
          : hasGpsPermission // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MapCommunityStateImplCopyWith<$Res>
    implements $MapCommunityStateCopyWith<$Res> {
  factory _$$MapCommunityStateImplCopyWith(_$MapCommunityStateImpl value,
          $Res Function(_$MapCommunityStateImpl) then) =
      __$$MapCommunityStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double latitude,
      double longitude,
      bool isSearchPage,
      bool isFilterPage,
      bool hasLocationPermission,
      bool hasGpsPermission});
}

/// @nodoc
class __$$MapCommunityStateImplCopyWithImpl<$Res>
    extends _$MapCommunityStateCopyWithImpl<$Res, _$MapCommunityStateImpl>
    implements _$$MapCommunityStateImplCopyWith<$Res> {
  __$$MapCommunityStateImplCopyWithImpl(_$MapCommunityStateImpl _value,
      $Res Function(_$MapCommunityStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MapCommunityState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? isSearchPage = null,
    Object? isFilterPage = null,
    Object? hasLocationPermission = null,
    Object? hasGpsPermission = null,
  }) {
    return _then(_$MapCommunityStateImpl(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      isSearchPage: null == isSearchPage
          ? _value.isSearchPage
          : isSearchPage // ignore: cast_nullable_to_non_nullable
              as bool,
      isFilterPage: null == isFilterPage
          ? _value.isFilterPage
          : isFilterPage // ignore: cast_nullable_to_non_nullable
              as bool,
      hasLocationPermission: null == hasLocationPermission
          ? _value.hasLocationPermission
          : hasLocationPermission // ignore: cast_nullable_to_non_nullable
              as bool,
      hasGpsPermission: null == hasGpsPermission
          ? _value.hasGpsPermission
          : hasGpsPermission // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MapCommunityStateImpl implements _MapCommunityState {
  _$MapCommunityStateImpl(
      {required this.latitude,
      required this.longitude,
      required this.isSearchPage,
      required this.isFilterPage,
      required this.hasLocationPermission,
      required this.hasGpsPermission});

  factory _$MapCommunityStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$MapCommunityStateImplFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final bool isSearchPage;
  @override
  final bool isFilterPage;
  @override
  final bool hasLocationPermission;
  @override
  final bool hasGpsPermission;

  @override
  String toString() {
    return 'MapCommunityState(latitude: $latitude, longitude: $longitude, isSearchPage: $isSearchPage, isFilterPage: $isFilterPage, hasLocationPermission: $hasLocationPermission, hasGpsPermission: $hasGpsPermission)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapCommunityStateImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.isSearchPage, isSearchPage) ||
                other.isSearchPage == isSearchPage) &&
            (identical(other.isFilterPage, isFilterPage) ||
                other.isFilterPage == isFilterPage) &&
            (identical(other.hasLocationPermission, hasLocationPermission) ||
                other.hasLocationPermission == hasLocationPermission) &&
            (identical(other.hasGpsPermission, hasGpsPermission) ||
                other.hasGpsPermission == hasGpsPermission));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude,
      isSearchPage, isFilterPage, hasLocationPermission, hasGpsPermission);

  /// Create a copy of MapCommunityState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MapCommunityStateImplCopyWith<_$MapCommunityStateImpl> get copyWith =>
      __$$MapCommunityStateImplCopyWithImpl<_$MapCommunityStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MapCommunityStateImplToJson(
      this,
    );
  }
}

abstract class _MapCommunityState implements MapCommunityState {
  factory _MapCommunityState(
      {required final double latitude,
      required final double longitude,
      required final bool isSearchPage,
      required final bool isFilterPage,
      required final bool hasLocationPermission,
      required final bool hasGpsPermission}) = _$MapCommunityStateImpl;

  factory _MapCommunityState.fromJson(Map<String, dynamic> json) =
      _$MapCommunityStateImpl.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  bool get isSearchPage;
  @override
  bool get isFilterPage;
  @override
  bool get hasLocationPermission;
  @override
  bool get hasGpsPermission;

  /// Create a copy of MapCommunityState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MapCommunityStateImplCopyWith<_$MapCommunityStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
