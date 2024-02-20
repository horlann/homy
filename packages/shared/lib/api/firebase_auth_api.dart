import 'dart:async';
import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthApi {
  final _firebaseAuth = FirebaseAuth.instance;
  String? _verificationId;

  Future<User> auth() async {
    final user = _firebaseAuth.currentUser;
    if (user != null) {
      return user;
    } else {
      throw Exception();
    }
  }

  User? get user => _firebaseAuth.currentUser;

  Future<bool> verifyPhone(
    String phoneNumber,
    VoidCallback completion,
    void Function(String) orError,
  ) async {
    try {
      final completer = Completer<bool>();
      await _firebaseAuth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (AuthCredential credential) async {
          await _firebaseAuth.signInWithCredential(credential);
          return completer.complete(true);
        },
        verificationFailed: (FirebaseAuthException e) {
          orError(e.code);
          return completer.complete(false);
        },
        codeSent: (String verificationId, int? resendToken) {
          _verificationId = verificationId;
          completion();
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          _verificationId = verificationId;
          completion();
        },
        timeout: const Duration(seconds: 10),
      );
      return completer.future;
    } on FirebaseAuthException catch (_) {
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<PhoneAuthCredential> verifyCode(
    String smsCode,
    VoidCallback completion,
  ) async {
    if (_verificationId == null) {
      throw Exception('VerificationId is not defined');
    }
    try {
      final credential = PhoneAuthProvider.credential(
        verificationId: _verificationId!,
        smsCode: smsCode,
      );
      return credential;
    } on FirebaseAuthException catch (_) {
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<User?> signInWithCredential(
    AuthCredential credential,
    VoidCallback completion,
  ) async {
    try {
      final userCredentials =
          await _firebaseAuth.signInWithCredential(credential);

      if (userCredentials.user != null) {
        completion();
        return userCredentials.user;
      } else {
        throw Exception();
      }
    } on FirebaseAuthException catch (_) {
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<User?> updatePhoneNumber(PhoneAuthCredential credential) async {
    try {
      await _firebaseAuth.currentUser?.updatePhoneNumber(credential);
      return _firebaseAuth.currentUser;
    } on FirebaseAuthException catch (_) {
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut();
    } catch (e) {
      //
    }
  }

  Stream<User?> authStateChanges() {
    return _firebaseAuth.authStateChanges();
  }
}
