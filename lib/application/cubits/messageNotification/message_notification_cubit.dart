import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_notification_cubit.freezed.dart';
part 'message_notification_cubit.g.dart';
part 'message_notification_state.dart';

class MessageNotificationCubit extends Cubit<MessageNotificationState> {
  MessageNotificationCubit() : super(MessageNotificationState.initial());

  void switchToMessages() => emit(state.copyWith(isMessagePaged: true));
  void switchToNotifications() => emit(state.copyWith(isMessagePaged: false));
  void updateScroll(double offset) {
    emit(state.copyWith(offset: offset));
  }
}
