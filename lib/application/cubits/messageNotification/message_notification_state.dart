part of 'message_notification_cubit.dart';

@freezed
class MessageNotificationState with _$MessageNotificationState {
  const factory MessageNotificationState({
    required bool isMessagePaged,
    required double offset,
  }) = _MessageNotificationState;

  factory MessageNotificationState.initial() {
    return const MessageNotificationState(
      isMessagePaged: true,
      offset: 0,
    );
  }
  factory MessageNotificationState.fromJson(Map<String, dynamic> json) => _$MessageNotificationStateFromJson(json);

}
