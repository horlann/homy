import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homyyy/core/routing/app_router.gr.dart';
import 'package:homyyy/features/chat/ui/list_of_chats/cubit/chats_cubit.dart';
import 'package:homyyy/features/user/models/user.dart';
import 'package:homyyy/features/user/user_repository.dart';

import '../../../../main/di.dart';

@RoutePage()
class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserChatsCubit>(
      create: (context) => di.get<UserChatsCubit>()..init(),
      child: Builder(builder: (context) {
        return Scaffold(
            appBar: AppBar(
              title: Text('Чати'),
              actions: [
                IconButton(
                    onPressed: () {
                      showUsersList(context);
                    },
                    icon: Icon(Icons.add))
              ],
            ),
            body: Builder(builder: (context) {
              return BlocBuilder<UserChatsCubit, ChatsState>(
                builder: (BuildContext context, ChatsState state) {
                  return state.maybeMap(
                      orElse: () => Center(
                            child: Text('Error'),
                          ),
                      idle: (idleState) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListView.separated(
                                itemBuilder: (context, index) {
                                  return _ChatCard(
                                    info: idleState.chats[index],
                                  );
                                },
                                separatorBuilder: (context, index) => SizedBox(
                                      height: 16,
                                    ),
                                itemCount: idleState.chats.length),
                          ));
                },
              );
            }));
      }),
    );
  }
}

class _ChatCard extends StatelessWidget {
  final UserChatInfo info;
  const _ChatCard({super.key, required this.info});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushRoute(SimpleChatScreenRoute(chatId: info.chatId));
      },
      child: SizedBox(
          height: 56,
          width: double.infinity,
          child: ColoredBox(color: Colors.red.withOpacity(0.5),child: Text(''),)),
    );
  }
}

showUsersList(BuildContext rootContext) {
  showModalBottomSheet(
      context: rootContext,
      builder: (context) {
        return SizedBox(
          height: 350,
          child: Column(
            children: [
              SizedBox(
                height: 16,
              ),
              Text('Сусіди'),
              SizedBox(
                height: 16,
              ),
              FutureBuilder(
                  future: di
                      .get<UserRepository>()
                      .getUsersByOsbb('7NbuVsOKuRSaGLjF8Enj'),
                  builder: (context, snapshot) {
                    return Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: ListView.separated(
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: 12,
                          );
                        },
                        itemBuilder: (context, index) {
                          return GestureDetector(
                              onTap: () {
                                                                context.popRoute();

                                final cubit =
                                    rootContext.read<UserChatsCubit>();
                                cubit.createChat((chat){
                                   context.pushRoute(SimpleChatScreenRoute(chatId: chat));
                
                                },snapshot.data?[index].id??'');},
                               
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.amber.withOpacity(0.2),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16))),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                        height: 32,
                                        width: 32,
                                        child: CircleAvatar()),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    SizedBox(
                                        height: 36,
                                        child: Text(
                                            '${snapshot.data?[index].name ?? ''}')),
                                  ],
                                ),
                              ));
                        },
                        itemCount: snapshot.data?.length ?? 0,
                      ),
                    );
                  }),
            ],
          ),
        );
      });
}
