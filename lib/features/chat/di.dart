import 'package:chat/data/chat_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:homyyy/features/chat/chats_repository.dart';
import 'package:homyyy/features/chat/ui/list_of_chats/cubit/chats_cubit.dart';
import 'package:homyyy/features/osbb/data/osbb_repository.dart';

import '../../main/di.dart';

class ChatsFeatureDependenciesResolver {
  static void resolve() {
    _data();
    _presentation();
  }

  static void _data() {
    di.registerSingleton<ChatsRepository>(
     ChatsRepositoryImpl(FirebaseFirestore.instance),
    );
      di.registerSingleton<ChatRepository>(
     ChatRepositoryImpl(firestore: FirebaseFirestore.instance),
    );
  }

  static void _presentation() {
    di.registerFactory<UserChatsCubit>(
      () => UserChatsCubit(di.get<ChatsRepository>(),di.get<ChatRepository>()),
    );
  }
}
