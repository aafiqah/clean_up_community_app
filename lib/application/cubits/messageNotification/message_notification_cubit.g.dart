// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_notification_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageNotificationStateImpl _$$MessageNotificationStateImplFromJson(
        Map<String, dynamic> json) =>
    _$MessageNotificationStateImpl(
      isMessagePaged: json['isMessagePaged'] as bool,
      offset: (json['offset'] as num).toDouble(),
    );

Map<String, dynamic> _$$MessageNotificationStateImplToJson(
        _$MessageNotificationStateImpl instance) =>
    <String, dynamic>{
      'isMessagePaged': instance.isMessagePaged,
      'offset': instance.offset,
    };
