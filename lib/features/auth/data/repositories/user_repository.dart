import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:homyyy/features/auth/data/exceptions/auth_exceptions.dart';
import 'package:shared/api/firebase_auth_api.dart';

abstract class UserAuthRepository {
  Future<void> verifyPhone(
    String phoneNumber,
    VoidCallback completion,
  );

  Future<PhoneAuthCredential> verifyCode(
    String phoneNumber,
    VoidCallback completion,
  );

  Future<void> signOut();

  Stream<User?> authStateChanges();

  Future<User?> signInByCredentials(
    AuthCredential phoneAuthCredential,
    VoidCallback completion,
  );

  Future<User?> updatePhoneNumber(PhoneAuthCredential phoneAuthCredential);
}

class UserAuthRepositoryImpl implements UserAuthRepository {
  UserAuthRepositoryImpl({required FirebaseAuthApi authApi}) : _authApi = authApi;

  final FirebaseAuthApi _authApi;

  @override
  Future<void> verifyPhone(
    String phoneNumber,
    VoidCallback completion,
  ) async {
    String? result;
    await _authApi.verifyPhone(phoneNumber, completion, (String errorCode) {
      result = errorCode;
    });
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
