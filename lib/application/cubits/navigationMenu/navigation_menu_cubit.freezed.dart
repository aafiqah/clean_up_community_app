// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'navigation_menu_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NavigationMenuState _$NavigationMenuStateFromJson(Map<String, dynamic> json) {
  return _NavigationMenuState.fromJson(json);
}

/// @nodoc
mixin _$NavigationMenuState {
  int get selectedIndex => throw _privateConstructorUsedError;

  /// Serializes this NavigationMenuState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NavigationMenuState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NavigationMenuStateCopyWith<NavigationMenuState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationMenuStateCopyWith<$Res> {
  factory $NavigationMenuStateCopyWith(
          NavigationMenuState value, $Res Function(NavigationMenuState) then) =
      _$NavigationMenuStateCopyWithImpl<$Res, NavigationMenuState>;
  @useResult
  $Res call({int selectedIndex});
}

/// @nodoc
class _$NavigationMenuStateCopyWithImpl<$Res, $Val extends NavigationMenuState>
    implements $NavigationMenuStateCopyWith<$Res> {
  _$NavigationMenuStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NavigationMenuState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
  }) {
    return _then(_value.copyWith(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NavigationMenuStateImplCopyWith<$Res>
    implements $NavigationMenuStateCopyWith<$Res> {
  factory _$$NavigationMenuStateImplCopyWith(_$NavigationMenuStateImpl value,
          $Res Function(_$NavigationMenuStateImpl) then) =
      __$$NavigationMenuStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int selectedIndex});
}

/// @nodoc
class __$$NavigationMenuStateImplCopyWithImpl<$Res>
    extends _$NavigationMenuStateCopyWithImpl<$Res, _$NavigationMenuStateImpl>
    implements _$$NavigationMenuStateImplCopyWith<$Res> {
  __$$NavigationMenuStateImplCopyWithImpl(_$NavigationMenuStateImpl _value,
      $Res Function(_$NavigationMenuStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NavigationMenuState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
  }) {
    return _then(_$NavigationMenuStateImpl(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NavigationMenuStateImpl implements _NavigationMenuState {
  _$NavigationMenuStateImpl({required this.selectedIndex});

  factory _$NavigationMenuStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$NavigationMenuStateImplFromJson(json);

  @override
  final int selectedIndex;

  @override
  String toString() {
    return 'NavigationMenuState(selectedIndex: $selectedIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigationMenuStateImpl &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, selectedIndex);

  /// Create a copy of NavigationMenuState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigationMenuStateImplCopyWith<_$NavigationMenuStateImpl> get copyWith =>
      __$$NavigationMenuStateImplCopyWithImpl<_$NavigationMenuStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NavigationMenuStateImplToJson(
      this,
    );
  }
}

abstract class _NavigationMenuState implements NavigationMenuState {
  factory _NavigationMenuState({required final int selectedIndex}) =
      _$NavigationMenuStateImpl;

  factory _NavigationMenuState.fromJson(Map<String, dynamic> json) =
      _$NavigationMenuStateImpl.fromJson;

  @override
  int get selectedIndex;

  /// Create a copy of NavigationMenuState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NavigationMenuStateImplCopyWith<_$NavigationMenuStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
