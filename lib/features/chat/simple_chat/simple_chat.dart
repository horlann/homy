import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:chat/chat.dart';

@RoutePage()
class SimpleChatScreen extends StatelessWidget {
  final String chatId;
   const SimpleChatScreen({super.key, required this.chatId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ChatScreen(chatId: chatId,));
  }
}