// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_page_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomePageState {

 bool get ontapSearch; int get onSelectedFilterTypeEvents; List<UpcomingEvent> get allEvents; List<UpcomingEvent> get filteredEvents;
/// Create a copy of HomePageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomePageStateCopyWith<HomePageState> get copyWith => _$HomePageStateCopyWithImpl<HomePageState>(this as HomePageState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomePageState&&(identical(other.ontapSearch, ontapSearch) || other.ontapSearch == ontapSearch)&&(identical(other.onSelectedFilterTypeEvents, onSelectedFilterTypeEvents) || other.onSelectedFilterTypeEvents == onSelectedFilterTypeEvents)&&const DeepCollectionEquality().equals(other.allEvents, allEvents)&&const DeepCollectionEquality().equals(other.filteredEvents, filteredEvents));
}


@override
int get hashCode => Object.hash(runtimeType,ontapSearch,onSelectedFilterTypeEvents,const DeepCollectionEquality().hash(allEvents),const DeepCollectionEquality().hash(filteredEvents));

@override
String toString() {
  return 'HomePageState(ontapSearch: $ontapSearch, onSelectedFilterTypeEvents: $onSelectedFilterTypeEvents, allEvents: $allEvents, filteredEvents: $filteredEvents)';
}


}

/// @nodoc
abstract mixin class $HomePageStateCopyWith<$Res>  {
  factory $HomePageStateCopyWith(HomePageState value, $Res Function(HomePageState) _then) = _$HomePageStateCopyWithImpl;
@useResult
$Res call({
 bool ontapSearch, int onSelectedFilterTypeEvents, List<UpcomingEvent> allEvents, List<UpcomingEvent> filteredEvents
});




}
/// @nodoc
class _$HomePageStateCopyWithImpl<$Res>
    implements $HomePageStateCopyWith<$Res> {
  _$HomePageStateCopyWithImpl(this._self, this._then);

  final HomePageState _self;
  final $Res Function(HomePageState) _then;

/// Create a copy of HomePageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ontapSearch = null,Object? onSelectedFilterTypeEvents = null,Object? allEvents = null,Object? filteredEvents = null,}) {
  return _then(_self.copyWith(
ontapSearch: null == ontapSearch ? _self.ontapSearch : ontapSearch // ignore: cast_nullable_to_non_nullable
as bool,onSelectedFilterTypeEvents: null == onSelectedFilterTypeEvents ? _self.onSelectedFilterTypeEvents : onSelectedFilterTypeEvents // ignore: cast_nullable_to_non_nullable
as int,allEvents: null == allEvents ? _self.allEvents : allEvents // ignore: cast_nullable_to_non_nullable
as List<UpcomingEvent>,filteredEvents: null == filteredEvents ? _self.filteredEvents : filteredEvents // ignore: cast_nullable_to_non_nullable
as List<UpcomingEvent>,
  ));
}

}


/// Adds pattern-matching-related methods to [HomePageState].
extension HomePageStatePatterns on HomePageState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomePageState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomePageState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomePageState value)  $default,){
final _that = this;
switch (_that) {
case _HomePageState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomePageState value)?  $default,){
final _that = this;
switch (_that) {
case _HomePageState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool ontapSearch,  int onSelectedFilterTypeEvents,  List<UpcomingEvent> allEvents,  List<UpcomingEvent> filteredEvents)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomePageState() when $default != null:
return $default(_that.ontapSearch,_that.onSelectedFilterTypeEvents,_that.allEvents,_that.filteredEvents);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool ontapSearch,  int onSelectedFilterTypeEvents,  List<UpcomingEvent> allEvents,  List<UpcomingEvent> filteredEvents)  $default,) {final _that = this;
switch (_that) {
case _HomePageState():
return $default(_that.ontapSearch,_that.onSelectedFilterTypeEvents,_that.allEvents,_that.filteredEvents);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool ontapSearch,  int onSelectedFilterTypeEvents,  List<UpcomingEvent> allEvents,  List<UpcomingEvent> filteredEvents)?  $default,) {final _that = this;
switch (_that) {
case _HomePageState() when $default != null:
return $default(_that.ontapSearch,_that.onSelectedFilterTypeEvents,_that.allEvents,_that.filteredEvents);case _:
  return null;

}
}

}

/// @nodoc


class _HomePageState implements HomePageState {
   _HomePageState({required this.ontapSearch, required this.onSelectedFilterTypeEvents, required final  List<UpcomingEvent> allEvents, required final  List<UpcomingEvent> filteredEvents}): _allEvents = allEvents,_filteredEvents = filteredEvents;
  

@override final  bool ontapSearch;
@override final  int onSelectedFilterTypeEvents;
 final  List<UpcomingEvent> _allEvents;
@override List<UpcomingEvent> get allEvents {
  if (_allEvents is EqualUnmodifiableListView) return _allEvents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_allEvents);
}

 final  List<UpcomingEvent> _filteredEvents;
@override List<UpcomingEvent> get filteredEvents {
  if (_filteredEvents is EqualUnmodifiableListView) return _filteredEvents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_filteredEvents);
}


/// Create a copy of HomePageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomePageStateCopyWith<_HomePageState> get copyWith => __$HomePageStateCopyWithImpl<_HomePageState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomePageState&&(identical(other.ontapSearch, ontapSearch) || other.ontapSearch == ontapSearch)&&(identical(other.onSelectedFilterTypeEvents, onSelectedFilterTypeEvents) || other.onSelectedFilterTypeEvents == onSelectedFilterTypeEvents)&&const DeepCollectionEquality().equals(other._allEvents, _allEvents)&&const DeepCollectionEquality().equals(other._filteredEvents, _filteredEvents));
}


@override
int get hashCode => Object.hash(runtimeType,ontapSearch,onSelectedFilterTypeEvents,const DeepCollectionEquality().hash(_allEvents),const DeepCollectionEquality().hash(_filteredEvents));

@override
String toString() {
  return 'HomePageState(ontapSearch: $ontapSearch, onSelectedFilterTypeEvents: $onSelectedFilterTypeEvents, allEvents: $allEvents, filteredEvents: $filteredEvents)';
}


}

/// @nodoc
abstract mixin class _$HomePageStateCopyWith<$Res> implements $HomePageStateCopyWith<$Res> {
  factory _$HomePageStateCopyWith(_HomePageState value, $Res Function(_HomePageState) _then) = __$HomePageStateCopyWithImpl;
@override @useResult
$Res call({
 bool ontapSearch, int onSelectedFilterTypeEvents, List<UpcomingEvent> allEvents, List<UpcomingEvent> filteredEvents
});




}
/// @nodoc
class __$HomePageStateCopyWithImpl<$Res>
    implements _$HomePageStateCopyWith<$Res> {
  __$HomePageStateCopyWithImpl(this._self, this._then);

  final _HomePageState _self;
  final $Res Function(_HomePageState) _then;

/// Create a copy of HomePageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ontapSearch = null,Object? onSelectedFilterTypeEvents = null,Object? allEvents = null,Object? filteredEvents = null,}) {
  return _then(_HomePageState(
ontapSearch: null == ontapSearch ? _self.ontapSearch : ontapSearch // ignore: cast_nullable_to_non_nullable
as bool,onSelectedFilterTypeEvents: null == onSelectedFilterTypeEvents ? _self.onSelectedFilterTypeEvents : onSelectedFilterTypeEvents // ignore: cast_nullable_to_non_nullable
as int,allEvents: null == allEvents ? _self._allEvents : allEvents // ignore: cast_nullable_to_non_nullable
as List<UpcomingEvent>,filteredEvents: null == filteredEvents ? _self._filteredEvents : filteredEvents // ignore: cast_nullable_to_non_nullable
as List<UpcomingEvent>,
  ));
}


}

// dart format on
