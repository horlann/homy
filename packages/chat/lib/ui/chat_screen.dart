import 'package:chat/cubit/chat_cubit.dart';
import 'package:chat/data/chat_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:get_it/get_it.dart';
import 'package:shared/api/firebase_auth_api.dart';
import 'package:uikit/uikit.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key, required this.chatId});

  final String chatId;

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  void _handleSendPressed(BuildContext context, types.PartialText message) {
    context.read<ChatCubit>().pushMessage(message.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.appColors.beigeBizarre,
      body: SafeArea(
        child: BlocProvider<ChatCubit>(
          create: (context) => ChatCubit(
              authApi: FirebaseAuthApi(),
              chatRepository: GetIt.instance.get<ChatRepository>())
            ..initialize(widget.chatId),
          child: Builder(builder: (context) {
            return BlocBuilder<ChatCubit, PersonalChatState>(
                builder: (context, state) {
              return state.map(
                  initial: (_) => const SizedBox.shrink(),
                  loading: (_) => const AppLoadingIndicator(),
                  idle: (idleState) {
                    return Chat(
                        l10n: const ChatL10nUk(),
                        messages: idleState.messages
                            .map((e) => types.TextMessage(
                                author: types.User(
                                    id: e.sender.id,
                                    imageUrl: 'e.sender.activeImage'),
                                id: e.id,
                                type: types.MessageType.text,
                                text: e.text,
                                status: types.Status.values.firstWhere(
                                    (element) => element.name == e.status,
                                    orElse: () => types.Status.error),
                                createdAt: e.createdAt.millisecondsSinceEpoch,
                                showStatus: true))
                            .toList(),
                        onSendPressed: (msg) {
                          _handleSendPressed(context, msg);
                        },
                        onMessageVisibilityChanged: (message, status) async {
                          if (message.status == types.Status.delivered &&
                              status &&
                              message.author.id != idleState.userId) {
                            await context
                                .read<ChatCubit>()
                                .seeMessage(message.id);
                          }
                        },
                        showUserAvatars: true,
                        showUserNames: true,
                        user: types.User(id: idleState.userId),
                        theme: DefaultChatTheme(
                          backgroundColor: context.theme.appColors.beigeBizarre,
                          primaryColor: context.theme.appColors.blueIndigo,
                          inputBackgroundColor: Colors.white,
                          inputTextColor: Colors.black,
                        ));
                  },
                  error: (_) {
                    return const Center(
                      child: Text('Error'),
                    );
                  });
            });
          }),
        ),
      ),
    );
  }
}
