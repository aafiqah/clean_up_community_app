import 'package:clean_up_community_app/application/cubits/messageNotification/message_notification_cubit.dart';
import 'package:clean_up_community_app/core/theme/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      context.read<MessageNotificationCubit>().updateScroll(_scrollController.offset);
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  void scrollToTop() {
    _scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MessageNotificationCubit, MessageNotificationState>(
      builder: (context, messageState) {
        return Scaffold(
          backgroundColor: CleanUpColor.primary.withValues(alpha: 0.2),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              child: ListView(
                controller: _scrollController,
                children: [
                  // ========== TAB SWITCH UI ==========
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: CleanUpColor.primary.withValues(alpha: 0.2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        // ========== MESSAGES TAB ==========
                        Expanded(
                          child: InkWell(
                            borderRadius: BorderRadius.circular(8),
                            onTap: () =>
                                context.read<MessageNotificationCubit>().switchToMessages(),
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                color: messageState.isMessagePaged
                                    ? CleanUpColor.primary
                                    : CleanUpColor.primary.withValues(alpha: 0.2),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "Messages",
                                style: TextStyle(
                                  color: messageState.isMessagePaged
                                      ? Colors.white
                                      : CleanUpColor.primary,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(width: 10),

                        // ========== NOTIFICATIONS TAB ==========
                        Expanded(
                          child: InkWell(
                            borderRadius: BorderRadius.circular(8),
                            onTap: () =>
                                context.read<MessageNotificationCubit>().switchToNotifications(),
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                color: !messageState.isMessagePaged
                                    ? CleanUpColor.primary
                                    : CleanUpColor.primary.withValues(alpha: 0.2),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "Notifications",
                                style: TextStyle(
                                  color: !messageState.isMessagePaged
                                      ? Colors.white
                                      : CleanUpColor.primary,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  // ========== CONTENT AREA ==========
                  messageState.isMessagePaged ? _buildMessagesView() : _buildNotificationsView(),
                ],
              ),
            ),
          ),
          floatingActionButton: messageState.offset > 150
              ? FloatingActionButton(
                  backgroundColor: CleanUpColor.primary,
                  onPressed: scrollToTop,
                  child: const Icon(Icons.arrow_upward, color: Colors.white),
                )
              : const SizedBox.shrink(),
        );
      },
    );
  }

  // ====================== VIEWS ======================

  Widget _buildMessagesView() {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: CleanUpColor.primary.withValues(alpha: 0.2),
            child: Icon(Icons.person, color: CleanUpColor.primary),
          ),
          title: Text('Message Title $index'),
          subtitle: Text('This is a preview of message number $index.'),
          trailing: Text('12:00 PM'),
        );
      },
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
    );
  }

  Widget _buildNotificationsView() {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: CleanUpColor.primary.withValues(alpha: 0.2),
            child: Icon(Icons.notifications, color: CleanUpColor.primary),
          ),
          title: Text('Notification Title $index'),
          subtitle: Text('This is a preview of notification number $index.'),
          trailing: Text('1d ago'),
        );
      },
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
    );
  }
}
