// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_page_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomePageState _$HomePageStateFromJson(Map<String, dynamic> json) {
  return _HomePageState.fromJson(json);
}

/// @nodoc
mixin _$HomePageState {
  bool get ontapSearch => throw _privateConstructorUsedError;
  int get onSelectedFilterTypeEvents => throw _privateConstructorUsedError;
  List<UpcomingEvent> get allEvents => throw _privateConstructorUsedError;
  List<UpcomingEvent> get filteredEvents => throw _privateConstructorUsedError;
  double get offset => throw _privateConstructorUsedError;

  /// Serializes this HomePageState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomePageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomePageStateCopyWith<HomePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageStateCopyWith<$Res> {
  factory $HomePageStateCopyWith(
          HomePageState value, $Res Function(HomePageState) then) =
      _$HomePageStateCopyWithImpl<$Res, HomePageState>;
  @useResult
  $Res call(
      {bool ontapSearch,
      int onSelectedFilterTypeEvents,
      List<UpcomingEvent> allEvents,
      List<UpcomingEvent> filteredEvents,
      double offset});
}

/// @nodoc
class _$HomePageStateCopyWithImpl<$Res, $Val extends HomePageState>
    implements $HomePageStateCopyWith<$Res> {
  _$HomePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomePageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ontapSearch = null,
    Object? onSelectedFilterTypeEvents = null,
    Object? allEvents = null,
    Object? filteredEvents = null,
    Object? offset = null,
  }) {
    return _then(_value.copyWith(
      ontapSearch: null == ontapSearch
          ? _value.ontapSearch
          : ontapSearch // ignore: cast_nullable_to_non_nullable
              as bool,
      onSelectedFilterTypeEvents: null == onSelectedFilterTypeEvents
          ? _value.onSelectedFilterTypeEvents
          : onSelectedFilterTypeEvents // ignore: cast_nullable_to_non_nullable
              as int,
      allEvents: null == allEvents
          ? _value.allEvents
          : allEvents // ignore: cast_nullable_to_non_nullable
              as List<UpcomingEvent>,
      filteredEvents: null == filteredEvents
          ? _value.filteredEvents
          : filteredEvents // ignore: cast_nullable_to_non_nullable
              as List<UpcomingEvent>,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomePageStateImplCopyWith<$Res>
    implements $HomePageStateCopyWith<$Res> {
  factory _$$HomePageStateImplCopyWith(
          _$HomePageStateImpl value, $Res Function(_$HomePageStateImpl) then) =
      __$$HomePageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool ontapSearch,
      int onSelectedFilterTypeEvents,
      List<UpcomingEvent> allEvents,
      List<UpcomingEvent> filteredEvents,
      double offset});
}

/// @nodoc
class __$$HomePageStateImplCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res, _$HomePageStateImpl>
    implements _$$HomePageStateImplCopyWith<$Res> {
  __$$HomePageStateImplCopyWithImpl(
      _$HomePageStateImpl _value, $Res Function(_$HomePageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomePageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ontapSearch = null,
    Object? onSelectedFilterTypeEvents = null,
    Object? allEvents = null,
    Object? filteredEvents = null,
    Object? offset = null,
  }) {
    return _then(_$HomePageStateImpl(
      ontapSearch: null == ontapSearch
          ? _value.ontapSearch
          : ontapSearch // ignore: cast_nullable_to_non_nullable
              as bool,
      onSelectedFilterTypeEvents: null == onSelectedFilterTypeEvents
          ? _value.onSelectedFilterTypeEvents
          : onSelectedFilterTypeEvents // ignore: cast_nullable_to_non_nullable
              as int,
      allEvents: null == allEvents
          ? _value._allEvents
          : allEvents // ignore: cast_nullable_to_non_nullable
              as List<UpcomingEvent>,
      filteredEvents: null == filteredEvents
          ? _value._filteredEvents
          : filteredEvents // ignore: cast_nullable_to_non_nullable
              as List<UpcomingEvent>,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomePageStateImpl implements _HomePageState {
  _$HomePageStateImpl(
      {required this.ontapSearch,
      required this.onSelectedFilterTypeEvents,
      required final List<UpcomingEvent> allEvents,
      required final List<UpcomingEvent> filteredEvents,
      required this.offset})
      : _allEvents = allEvents,
        _filteredEvents = filteredEvents;

  factory _$HomePageStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomePageStateImplFromJson(json);

  @override
  final bool ontapSearch;
  @override
  final int onSelectedFilterTypeEvents;
  final List<UpcomingEvent> _allEvents;
  @override
  List<UpcomingEvent> get allEvents {
    if (_allEvents is EqualUnmodifiableListView) return _allEvents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allEvents);
  }

  final List<UpcomingEvent> _filteredEvents;
  @override
  List<UpcomingEvent> get filteredEvents {
    if (_filteredEvents is EqualUnmodifiableListView) return _filteredEvents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredEvents);
  }

  @override
  final double offset;

  @override
  String toString() {
    return 'HomePageState(ontapSearch: $ontapSearch, onSelectedFilterTypeEvents: $onSelectedFilterTypeEvents, allEvents: $allEvents, filteredEvents: $filteredEvents, offset: $offset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomePageStateImpl &&
            (identical(other.ontapSearch, ontapSearch) ||
                other.ontapSearch == ontapSearch) &&
            (identical(other.onSelectedFilterTypeEvents,
                    onSelectedFilterTypeEvents) ||
                other.onSelectedFilterTypeEvents ==
                    onSelectedFilterTypeEvents) &&
            const DeepCollectionEquality()
                .equals(other._allEvents, _allEvents) &&
            const DeepCollectionEquality()
                .equals(other._filteredEvents, _filteredEvents) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      ontapSearch,
      onSelectedFilterTypeEvents,
      const DeepCollectionEquality().hash(_allEvents),
      const DeepCollectionEquality().hash(_filteredEvents),
      offset);

  /// Create a copy of HomePageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomePageStateImplCopyWith<_$HomePageStateImpl> get copyWith =>
      __$$HomePageStateImplCopyWithImpl<_$HomePageStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomePageStateImplToJson(
      this,
    );
  }
}

abstract class _HomePageState implements HomePageState {
  factory _HomePageState(
      {required final bool ontapSearch,
      required final int onSelectedFilterTypeEvents,
      required final List<UpcomingEvent> allEvents,
      required final List<UpcomingEvent> filteredEvents,
      required final double offset}) = _$HomePageStateImpl;

  factory _HomePageState.fromJson(Map<String, dynamic> json) =
      _$HomePageStateImpl.fromJson;

  @override
  bool get ontapSearch;
  @override
  int get onSelectedFilterTypeEvents;
  @override
  List<UpcomingEvent> get allEvents;
  @override
  List<UpcomingEvent> get filteredEvents;
  @override
  double get offset;

  /// Create a copy of HomePageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomePageStateImplCopyWith<_$HomePageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
