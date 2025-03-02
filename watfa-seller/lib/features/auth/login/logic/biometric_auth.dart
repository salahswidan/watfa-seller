import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
import 'package:local_auth_android/local_auth_android.dart';
import 'package:local_auth_darwin/local_auth_darwin.dart';

class LocalAuthApi {
  static final auth = LocalAuthentication();
  static Future<void> checkAvailableBiometrics() async {
    try {
      final biometrics = await auth.getAvailableBiometrics();
      biometrics.add(BiometricType.face);
      log('Available biometrics: $biometrics');
      if (biometrics.contains(BiometricType.face)) {
        log('Face ID is available');
      }
      if (biometrics.contains(BiometricType.fingerprint)) {
        log('Fingerprint is available');
      }
    } on PlatformException catch (e) {
      log(e.toString());
    }
  }

  static Future<bool> hasBiometrics() async {
    try {
      return await auth.canCheckBiometrics;
    } on PlatformException catch (e) {
      log(e.toString());
      return false;
    }
  }

  static Future<List<BiometricType>> getBiometrics() async {
    try {
      final biometrics = await auth.getAvailableBiometrics();
      log('Available biometrics: $biometrics');
      return biometrics;
    } on PlatformException catch (e) {
      log(e.toString());
      return <BiometricType>[];
    }
  }

  static Future<bool> authenticateWithFingerprint() async {
    // final isAvailable = await hasBiometrics();
    // if (!isAvailable) return false;

    // final availableBiometrics = await getBiometrics();
    // final hasFingerprint =
    //     availableBiometrics.contains(BiometricType.fingerprint);

    // if (!hasFingerprint) return false;

    try {
      log('Authenticating with Fingerprint');
      return await auth.authenticate(
        localizedReason: 'Scan your face to authenticate',
        authMessages: [
          const AndroidAuthMessages(
            signInTitle: 'Sign in to watfa',
            biometricHint: 'Touch sensor',
            cancelButton: 'Cancel',
            goToSettingsButton: 'Settings',
            goToSettingsDescription: 'Please set up your fingerprint.',
          ),
          const IOSAuthMessages(
            cancelButton: 'Cancel',
            goToSettingsButton: 'Settings',
            goToSettingsDescription: 'Please set up your Face ID.',
          ),
        ],
        options: const AuthenticationOptions(
          stickyAuth: true,
          sensitiveTransaction: true,
          biometricOnly: true,
        ),
      );
    } on PlatformException catch (e) {
      log(e.toString());
      return false;
    }
  }

  static Future<bool> authenticateWithFaceID() async {
    // final isAvailable = await hasBiometrics();
    // if (!isAvailable) return false;

    // final availableBiometrics = await getBiometrics();
    // final hasFaceID = availableBiometrics.contains(BiometricType.face);

    // if (!hasFaceID) return false;

    try {
      log('Authenticating with Face ID');
      return await auth.authenticate(
        localizedReason: 'Scan your face to authenticate',
        authMessages: [
          const AndroidAuthMessages(
            signInTitle: 'Sign in to watfa',
            biometricHint: 'Scan your face',
            cancelButton: 'Cancel',
            goToSettingsButton: 'Settings',
            goToSettingsDescription: 'Please set up your Face ID.',
          ),
          const IOSAuthMessages(
            cancelButton: 'Cancel',
            goToSettingsButton: 'Settings',
            goToSettingsDescription: 'Please set up your Face ID.',
          ),
        ],
        options: const AuthenticationOptions(
          stickyAuth: true,
          sensitiveTransaction: true,
          biometricOnly: true,
        ),
      );
    } on PlatformException catch (e) {
      log(e.toString());
      return false;
    }
  }
}
