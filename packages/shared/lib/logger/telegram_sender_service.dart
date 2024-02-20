import 'dart:math';

import 'package:http/http.dart' as http;

class TelegramClient {
  TelegramClient({
    String chatId = '-4001543671',
  }) : _chatId = chatId;

  final String _chatId;
  static const String _botToken =
      '6853770338:AAETTmY-PKJlul9UGaT6v8ICFgPVWQ5BEzo';

  String _limitMessage(final String message) =>
      message.substring(0, min(4096, message.length)).replaceAll(r'\', r'\\');

  Future<void> sendMessage(final String message) async {
    try {
      final Uri uri = Uri.https(
        'api.telegram.org',
        '/bot$_botToken/sendMessage',
        {
          'chat_id': _chatId,
          'text': _limitMessage(message),
          'parse_mode': 'html',
        },
      );
      final response = await http.get(uri);
      //todo
      //  logger.i(response.body);
    } catch (e) {
      // logger.e('Error while sending telegram message');
    }
  }
}
