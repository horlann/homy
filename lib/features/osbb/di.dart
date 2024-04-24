import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:homyyy/features/auth/cubits/auth/auth_cubit.dart';
import 'package:homyyy/features/auth/cubits/code_verification/code_verification_cubit.dart';
import 'package:homyyy/features/auth/cubits/phone_input/phone_input_cubit.dart';
import 'package:homyyy/features/auth/cubits/sign_in_by_email/sign_in_email_cubit.dart';
import 'package:homyyy/features/auth/cubits/sign_up/sign_up_cubit.dart';
import 'package:homyyy/features/auth/data/repositories/user_auth_repository.dart';
import 'package:homyyy/features/auth/ui/sign_in_by_email.dart';
import 'package:homyyy/features/cdn/cdn_repository.dart';
import 'package:homyyy/features/cdn/storage/firebase_storage.dart';
import 'package:homyyy/features/osbb/cubit/osbb_cubit.dart';
import 'package:homyyy/features/osbb/data/osbb_repository.dart';
import 'package:homyyy/features/user/user_repository.dart';
import 'package:homyyy/main/di.dart';
import 'package:shared/api/firebase_auth_api.dart';

class OsbbFeatureDependenciesResolver {
  static void resolve() {
    _data();
    _presentation();
  }

  static void _data() {
    di.registerSingleton<OSBBRepository>(
     OSBBRepositoryImpl(FirebaseFirestore.instance),
    );
  }

  static void _presentation() {
    di.registerFactory<OsbbCubit>(
      () => OsbbCubit(di.get<OSBBRepository>()),
    );
  }
}
