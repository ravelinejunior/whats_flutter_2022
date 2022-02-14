import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'login_store.g.dart';

class LoginStore = _LoginStore with _$LoginStore;

abstract class _LoginStore with Store {
  _LoginStore() {
    verifyLoggedUser();
  }

  final auth = FirebaseAuth.instance;

  @observable
  String? email = "";
  @action
  void setEmail(String value) => email = value;
  @computed
  bool get emailValid =>
      email != null && email!.length > 6 && email!.isNotEmpty;
  String? get emailError {
    if (!showErrors || email == null || emailValid) {
      return null;
    } else if (email!.isEmpty) {
      return "This field cannot be empty";
    } else {
      return "Email is wrong formatted";
    }
  }

  @observable
  String? password = "";
  @action
  void setPassword(String value) => password = value;
  @computed
  bool get passwordValid => password != null && password!.isNotEmpty;

  String? get passwordError {
    if (!showErrors || password == null || passwordValid) {
      return null;
    } else {
      return "Password cannot be empty";
    }
  }

  @observable
  bool showErrors = false;

  @observable
  bool loading = false;

  @observable
  bool successfulLogin = false;

  @computed
  bool get isFormValid => emailValid && passwordValid;

  @computed
  Function? get sendPressedValid => isFormValid && !loading ? _loginUser : null;

  @action
  Future<void> _loginUser() async {
    loading = true;

    try {
      auth
          .signInWithEmailAndPassword(
        email: email!,
        password: password!,
      )
          .then(
        (userCredencial) async {
          if (userCredencial.user != null) {
            successfulLogin = true;
            loading = false;
          }
          await Future.delayed(const Duration(seconds: 2)).then(
            (value) {
              loading = false;
            },
          );
        },
      );
    } catch (e) {
      debugPrintStack();
    }
  }

  @action
  bool setInvalidSendPressed() => showErrors = true;

  @action
  Future<void> verifyLoggedUser() async {
    final firebaseUser = auth.currentUser;
    if (firebaseUser != null) {
      successfulLogin = true;
    }
  }
}
