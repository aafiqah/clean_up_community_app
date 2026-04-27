// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_community_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MapCommunityState {

 double get latitude; double get longitude; bool get isSearchPage; bool get isFilterPage; bool get hasLocationPermission; bool get hasGpsPermission;
/// Create a copy of MapCommunityState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MapCommunityStateCopyWith<MapCommunityState> get copyWith => _$MapCommunityStateCopyWithImpl<MapCommunityState>(this as MapCommunityState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MapCommunityState&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.isSearchPage, isSearchPage) || other.isSearchPage == isSearchPage)&&(identical(other.isFilterPage, isFilterPage) || other.isFilterPage == isFilterPage)&&(identical(other.hasLocationPermission, hasLocationPermission) || other.hasLocationPermission == hasLocationPermission)&&(identical(other.hasGpsPermission, hasGpsPermission) || other.hasGpsPermission == hasGpsPermission));
}


@override
int get hashCode => Object.hash(runtimeType,latitude,longitude,isSearchPage,isFilterPage,hasLocationPermission,hasGpsPermission);

@override
String toString() {
  return 'MapCommunityState(latitude: $latitude, longitude: $longitude, isSearchPage: $isSearchPage, isFilterPage: $isFilterPage, hasLocationPermission: $hasLocationPermission, hasGpsPermission: $hasGpsPermission)';
}


}

/// @nodoc
abstract mixin class $MapCommunityStateCopyWith<$Res>  {
  factory $MapCommunityStateCopyWith(MapCommunityState value, $Res Function(MapCommunityState) _then) = _$MapCommunityStateCopyWithImpl;
@useResult
$Res call({
 double latitude, double longitude, bool isSearchPage, bool isFilterPage, bool hasLocationPermission, bool hasGpsPermission
});




}
/// @nodoc
class _$MapCommunityStateCopyWithImpl<$Res>
    implements $MapCommunityStateCopyWith<$Res> {
  _$MapCommunityStateCopyWithImpl(this._self, this._then);

  final MapCommunityState _self;
  final $Res Function(MapCommunityState) _then;

/// Create a copy of MapCommunityState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? latitude = null,Object? longitude = null,Object? isSearchPage = null,Object? isFilterPage = null,Object? hasLocationPermission = null,Object? hasGpsPermission = null,}) {
  return _then(_self.copyWith(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,isSearchPage: null == isSearchPage ? _self.isSearchPage : isSearchPage // ignore: cast_nullable_to_non_nullable
as bool,isFilterPage: null == isFilterPage ? _self.isFilterPage : isFilterPage // ignore: cast_nullable_to_non_nullable
as bool,hasLocationPermission: null == hasLocationPermission ? _self.hasLocationPermission : hasLocationPermission // ignore: cast_nullable_to_non_nullable
as bool,hasGpsPermission: null == hasGpsPermission ? _self.hasGpsPermission : hasGpsPermission // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [MapCommunityState].
extension MapCommunityStatePatterns on MapCommunityState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MapCommunityState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MapCommunityState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MapCommunityState value)  $default,){
final _that = this;
switch (_that) {
case _MapCommunityState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MapCommunityState value)?  $default,){
final _that = this;
switch (_that) {
case _MapCommunityState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double latitude,  double longitude,  bool isSearchPage,  bool isFilterPage,  bool hasLocationPermission,  bool hasGpsPermission)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MapCommunityState() when $default != null:
return $default(_that.latitude,_that.longitude,_that.isSearchPage,_that.isFilterPage,_that.hasLocationPermission,_that.hasGpsPermission);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double latitude,  double longitude,  bool isSearchPage,  bool isFilterPage,  bool hasLocationPermission,  bool hasGpsPermission)  $default,) {final _that = this;
switch (_that) {
case _MapCommunityState():
return $default(_that.latitude,_that.longitude,_that.isSearchPage,_that.isFilterPage,_that.hasLocationPermission,_that.hasGpsPermission);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double latitude,  double longitude,  bool isSearchPage,  bool isFilterPage,  bool hasLocationPermission,  bool hasGpsPermission)?  $default,) {final _that = this;
switch (_that) {
case _MapCommunityState() when $default != null:
return $default(_that.latitude,_that.longitude,_that.isSearchPage,_that.isFilterPage,_that.hasLocationPermission,_that.hasGpsPermission);case _:
  return null;

}
}

}

/// @nodoc


class _MapCommunityState implements MapCommunityState {
   _MapCommunityState({required this.latitude, required this.longitude, required this.isSearchPage, required this.isFilterPage, required this.hasLocationPermission, required this.hasGpsPermission});
  

@override final  double latitude;
@override final  double longitude;
@override final  bool isSearchPage;
@override final  bool isFilterPage;
@override final  bool hasLocationPermission;
@override final  bool hasGpsPermission;

/// Create a copy of MapCommunityState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MapCommunityStateCopyWith<_MapCommunityState> get copyWith => __$MapCommunityStateCopyWithImpl<_MapCommunityState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MapCommunityState&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.isSearchPage, isSearchPage) || other.isSearchPage == isSearchPage)&&(identical(other.isFilterPage, isFilterPage) || other.isFilterPage == isFilterPage)&&(identical(other.hasLocationPermission, hasLocationPermission) || other.hasLocationPermission == hasLocationPermission)&&(identical(other.hasGpsPermission, hasGpsPermission) || other.hasGpsPermission == hasGpsPermission));
}


@override
int get hashCode => Object.hash(runtimeType,latitude,longitude,isSearchPage,isFilterPage,hasLocationPermission,hasGpsPermission);

@override
String toString() {
  return 'MapCommunityState(latitude: $latitude, longitude: $longitude, isSearchPage: $isSearchPage, isFilterPage: $isFilterPage, hasLocationPermission: $hasLocationPermission, hasGpsPermission: $hasGpsPermission)';
}


}

/// @nodoc
abstract mixin class _$MapCommunityStateCopyWith<$Res> implements $MapCommunityStateCopyWith<$Res> {
  factory _$MapCommunityStateCopyWith(_MapCommunityState value, $Res Function(_MapCommunityState) _then) = __$MapCommunityStateCopyWithImpl;
@override @useResult
$Res call({
 double latitude, double longitude, bool isSearchPage, bool isFilterPage, bool hasLocationPermission, bool hasGpsPermission
});




}
/// @nodoc
class __$MapCommunityStateCopyWithImpl<$Res>
    implements _$MapCommunityStateCopyWith<$Res> {
  __$MapCommunityStateCopyWithImpl(this._self, this._then);

  final _MapCommunityState _self;
  final $Res Function(_MapCommunityState) _then;

/// Create a copy of MapCommunityState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? latitude = null,Object? longitude = null,Object? isSearchPage = null,Object? isFilterPage = null,Object? hasLocationPermission = null,Object? hasGpsPermission = null,}) {
  return _then(_MapCommunityState(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,isSearchPage: null == isSearchPage ? _self.isSearchPage : isSearchPage // ignore: cast_nullable_to_non_nullable
as bool,isFilterPage: null == isFilterPage ? _self.isFilterPage : isFilterPage // ignore: cast_nullable_to_non_nullable
as bool,hasLocationPermission: null == hasLocationPermission ? _self.hasLocationPermission : hasLocationPermission // ignore: cast_nullable_to_non_nullable
as bool,hasGpsPermission: null == hasGpsPermission ? _self.hasGpsPermission : hasGpsPermission // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
