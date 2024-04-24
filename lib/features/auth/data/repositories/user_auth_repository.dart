import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:homyyy/features/auth/data/exceptions/auth_exceptions.dart';
import 'package:shared/api/firebase_auth_api.dart';

///To verify user identity OAuth2 protocol
///is used in [Homyyy] application
abstract class UserAuthRepository {
  ///Verify phone number
  ///and send OTP code
  ///to provided number
  ///
  Future<void> verifyPhone(
    String phoneNumber,
    VoidCallback completion,
  );

  ///Verify OTP code
  Future<PhoneAuthCredential> verifyCode(
    String phoneNumber,
    VoidCallback completion,
  );

  ///Remove session token and log out
  Future<void> signOut();

  ///Listen auth state updates
  Stream<User?> authStateChanges();

  ///Sign in by provided credentials
  ///can be differ
  ///[Email+Password]
  ///[Phone +OTP]
  Future<User?> signInByCredentials(
    AuthCredential phoneAuthCredential,
    VoidCallback completion,
  );

  ///Verify email and password
  Future<void> verifyEmailAndPassword(
    String email,
    String password,
    VoidCallback completion,
  );

  ///Create account by email and password
  Future<UserCredential?> createByEmailAndPassword(
    String email,
    String password,
    VoidCallback completion,
  );

  ///Update phone number to new one by session token
  Future<User?> updatePhoneNumber(PhoneAuthCredential phoneAuthCredential);
}

class UserAuthRepositoryImpl implements UserAuthRepository {
  UserAuthRepositoryImpl({required FirebaseAuthApi authApi})
      : _authApi = authApi;

  final FirebaseAuthApi _authApi;

  @override
  Future<void> verifyPhone(
    String phoneNumber,
    VoidCallback completion,
  ) async {
    print('result $phoneNumber');

    String? result;
    await _authApi.verifyPhone(phoneNumber, completion, (String errorCode) {
      result = errorCode;
    });
    print(result);
    if (result == 'invalid-phone-number') {
      throw const InvalidNumberException();
    } else if (result == 'phone-number-already-exists') {
      throw const PhoneAlreadyExistsException();
    } else if (result == 'too-many-requests') {
      throw const TooManyRequestsException();
    }
    throw UnknownException(result ?? 'unknown ');
  }

  @override
  Future<PhoneAuthCredential> verifyCode(
    String smsCode,
    VoidCallback completion,
  ) async {
    try {
      final credentials = await _authApi.verifyCode(smsCode, completion);
      return credentials;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-verification-code') {
        throw const IncorrectOTPException();
      } else if (e.code == 'too-many-requests') {
        throw const TooManyRequestsException();
      }
      throw UnknownException(e.code);
    }
  }

  @override
  Future<void> verifyEmailAndPassword(
    String email,
    String password,
    VoidCallback completion,
  ) async {
    try {
      final credentials =
          await _authApi.signInWithEmailpassword(email, password, completion);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-verification-code') {
        throw const IncorrectOTPException();
      } else if (e.code == 'too-many-requests') {
        throw const TooManyRequestsException();
      }
      throw UnknownException(e.code);
    }
  }

  @override
  Future<User?> signInByCredentials(
    AuthCredential phoneAuthCredential,
    VoidCallback completion,
  ) async {
    try {
      final user =
          await _authApi.signInWithCredential(phoneAuthCredential, completion);
      return user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-verification-code') {
        throw const IncorrectOTPException();
      } else if (e.code == 'too-many-requests') {
        throw const TooManyRequestsException();
      }
      throw UnknownException(e.code);
    }
  }

  @override
  Future<UserCredential?> createByEmailAndPassword(
    String email,
    String password,
    VoidCallback completion,
  ) async {
    try {
      final user = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-verification-code') {
        throw const IncorrectOTPException();
      } else if (e.code == 'too-many-requests') {
        throw const TooManyRequestsException();
      }
      print(e.code);
      throw UnknownException(e.code);
    }
  }

  @override
  Future<void> signOut() {
    try {
      return _authApi.signOut();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<User?> updatePhoneNumber(
    PhoneAuthCredential phoneAuthCredential,
  ) async {
    try {
      final user = await _authApi.updatePhoneNumber(phoneAuthCredential);
      return user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'credential-already-in-use') {
        throw const PhoneAlreadyExistsException();
      } else if (e.code == 'too-many-requests') {
        throw const TooManyRequestsException();
      }
      throw UnknownException(e.code);
    }
  }

  @override
  Stream<User?> authStateChanges() {
    return _authApi.authStateChanges();
  }
}
