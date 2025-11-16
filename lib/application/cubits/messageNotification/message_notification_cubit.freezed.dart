// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_notification_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageNotificationState _$MessageNotificationStateFromJson(
    Map<String, dynamic> json) {
  return _MessageNotificationState.fromJson(json);
}

/// @nodoc
mixin _$MessageNotificationState {
  bool get isMessagePaged => throw _privateConstructorUsedError;
  double get offset => throw _privateConstructorUsedError;

  /// Serializes this MessageNotificationState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageNotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageNotificationStateCopyWith<MessageNotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageNotificationStateCopyWith<$Res> {
  factory $MessageNotificationStateCopyWith(MessageNotificationState value,
          $Res Function(MessageNotificationState) then) =
      _$MessageNotificationStateCopyWithImpl<$Res, MessageNotificationState>;
  @useResult
  $Res call({bool isMessagePaged, double offset});
}

/// @nodoc
class _$MessageNotificationStateCopyWithImpl<$Res,
        $Val extends MessageNotificationState>
    implements $MessageNotificationStateCopyWith<$Res> {
  _$MessageNotificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageNotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMessagePaged = null,
    Object? offset = null,
  }) {
    return _then(_value.copyWith(
      isMessagePaged: null == isMessagePaged
          ? _value.isMessagePaged
          : isMessagePaged // ignore: cast_nullable_to_non_nullable
              as bool,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageNotificationStateImplCopyWith<$Res>
    implements $MessageNotificationStateCopyWith<$Res> {
  factory _$$MessageNotificationStateImplCopyWith(
          _$MessageNotificationStateImpl value,
          $Res Function(_$MessageNotificationStateImpl) then) =
      __$$MessageNotificationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isMessagePaged, double offset});
}

/// @nodoc
class __$$MessageNotificationStateImplCopyWithImpl<$Res>
    extends _$MessageNotificationStateCopyWithImpl<$Res,
        _$MessageNotificationStateImpl>
    implements _$$MessageNotificationStateImplCopyWith<$Res> {
  __$$MessageNotificationStateImplCopyWithImpl(
      _$MessageNotificationStateImpl _value,
      $Res Function(_$MessageNotificationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageNotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMessagePaged = null,
    Object? offset = null,
  }) {
    return _then(_$MessageNotificationStateImpl(
      isMessagePaged: null == isMessagePaged
          ? _value.isMessagePaged
          : isMessagePaged // ignore: cast_nullable_to_non_nullable
              as bool,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageNotificationStateImpl implements _MessageNotificationState {
  const _$MessageNotificationStateImpl(
      {required this.isMessagePaged, required this.offset});

  factory _$MessageNotificationStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageNotificationStateImplFromJson(json);

  @override
  final bool isMessagePaged;
  @override
  final double offset;

  @override
  String toString() {
    return 'MessageNotificationState(isMessagePaged: $isMessagePaged, offset: $offset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageNotificationStateImpl &&
            (identical(other.isMessagePaged, isMessagePaged) ||
                other.isMessagePaged == isMessagePaged) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isMessagePaged, offset);

  /// Create a copy of MessageNotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageNotificationStateImplCopyWith<_$MessageNotificationStateImpl>
      get copyWith => __$$MessageNotificationStateImplCopyWithImpl<
          _$MessageNotificationStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageNotificationStateImplToJson(
      this,
    );
  }
}

abstract class _MessageNotificationState implements MessageNotificationState {
  const factory _MessageNotificationState(
      {required final bool isMessagePaged,
      required final double offset}) = _$MessageNotificationStateImpl;

  factory _MessageNotificationState.fromJson(Map<String, dynamic> json) =
      _$MessageNotificationStateImpl.fromJson;

  @override
  bool get isMessagePaged;
  @override
  double get offset;

  /// Create a copy of MessageNotificationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageNotificationStateImplCopyWith<_$MessageNotificationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
