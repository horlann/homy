import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';

@RoutePage()
class ChatsWrapper extends StatelessWidget {
  const ChatsWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoRouter();
  }
}