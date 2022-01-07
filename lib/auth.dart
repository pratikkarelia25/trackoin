import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class localAuth {
  static final _auth = LocalAuthentication();

  static Future<bool> hasBiometrics() async {
    return await _auth.canCheckBiometrics;
  }

  static Future<bool> authenticate() async {
    final isAvail = await hasBiometrics();
    if (!isAvail) return false;

    try {
      return await _auth.authenticate(
          localizedReason: 'Scan your finger to authenticate',
          useErrorDialogs: true,
          stickyAuth: true);
    } on PlatformException catch (e) {
      return false;
    }
  }
}
