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
import 'package:homyyy/features/user/user_repository.dart';
import 'package:homyyy/main/di.dart';
import 'package:shared/api/firebase_auth_api.dart';

class AuthFeatureDependenciesResolver {
  static void resolve() {
    _data();
    _presentation();
  }

  static void _data() {
    di.registerSingleton<FirebaseAuthApi>(FirebaseAuthApi());
    di.registerSingleton<UserAuthRepository>(
      UserAuthRepositoryImpl(authApi: di.get<FirebaseAuthApi>()),
    );
    di.registerSingleton<UserRepository>(
      UserRepositoryImpl(
        FirebaseFirestore.instance,
        di.get<FirebaseAuthApi>(),
      ),
    );
    di.registerSingleton<CDNStorageRepository>(
      CDNRepository(FirebaseStorageImpl(FirebaseStorage.instance)),
    );
  }

  static void _presentation() {
    di.registerFactory<PhoneInputCubit>(
      () => PhoneInputCubit(di.get<UserAuthRepository>()),
    );
    di.registerFactory<CodeVerificationCubit>(
      () => CodeVerificationCubit(
        di.get<UserAuthRepository>(),
        di.get<UserRepository>(),
      ),
    );
    di.registerFactory<SignUpCubit>(
      () => SignUpCubit(
        di.get<UserAuthRepository>(),
                di.get<UserRepository>(),

      ),
    );
    di.registerFactory<SignInEmailCubit>(
      () => SignInEmailCubit(
        di.get<UserAuthRepository>(),
      ),
    );
    di.registerFactory<AuthCubit>(
      () => AuthCubit(di.get<UserAuthRepository>(), di.get<UserRepository>()),
    );
  }
}
