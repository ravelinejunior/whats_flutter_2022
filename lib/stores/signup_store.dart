import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/widgets.dart';
import 'package:mobx/mobx.dart';
import 'package:whats_flutter/data/model/user_model.dart';
part 'signup_store.g.dart';

class SignupStore = _SignupStoreBase with _$SignupStore;

abstract class _SignupStoreBase with Store {
  @observable
  bool loading = false;
  @action
  void isLoading(bool value) => loading = value;

  @observable
  String? name = "";
  @action
  void setName(String value) => name = value;
  @computed
  bool get nameValid => name != null && name!.length > 6;
  String? get nameError {
    if (!showErrors || name == null || nameValid) {
      return null;
    } else if (name!.isEmpty) {
      return "This field cannot be empty";
    } else {
      return "Name is too short.";
    }
  }

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
  String? age = "0";
  @action
  void setAge(String value) => age = value;
  bool get ageValid =>
      age != null && age!.length > 1 && age!.length < 4 && age!.isNotEmpty;
  @computed
  String? get ageError {
    if (!showErrors || ageValid) {
      return null;
    } else if (age!.length > 3) {
      return "This age is not available to use the app!";
    } else {
      return "Age must be bigger than 10 years old";
    }
  }

  @observable
  String? phone = "";
  @action
  void setPhone(String value) => phone = value;
  @computed
  bool get phoneValid => phone != null && phone!.length >= 14;
  String? get phoneError {
    if (!showErrors || phoneValid) {
      return null;
    } else if (phone!.isEmpty) {
      return "This field cannot be empty";
    } else {
      return "Phone is wrong formatted\nEx..: 31-975903333";
    }
  }

  @observable
  String? password = "";
  @action
  void setPassword(String value) => password = value;

  @observable
  String? confirmPassword = "";
  @action
  void setConfirmPassword(String value) => confirmPassword = value;
  bool get confirmPasswordValid =>
      confirmPassword != null && password == confirmPassword;
  String? get confirmPasswordError {
    if (!showErrors || confirmPassword!.isNotEmpty && confirmPasswordValid) {
      return null;
    } else if (confirmPassword!.isEmpty) {
      return "Fields cannot be empty";
    } else {
      return "Password is not the same!";
    }
  }

  @computed
  bool get isFormValid =>
      nameValid && emailValid && ageValid && phoneValid && confirmPasswordValid;

  @computed
  Function? get sendPressedValid =>
      isFormValid && !loading ? _signupUser : null;

  @action
  Future<void> _signupUser() async {
    loading = true;
    final auth = FirebaseAuth.instance;
    final user = UserModel(
      name: name,
      email: email,
      age: age,
      phone: phone,
      password: password,
      confirmPassword: confirmPassword,
    );

    try {
      auth
          .createUserWithEmailAndPassword(
        email: user.email!,
        password: user.password!,
      )
          .then((userCredential) async {
        if (userCredential.user != null) {
          final database = FirebaseDatabase.instance;
          final userMap = user.toMap();
          final userRef = database.ref('Users');

          userRef.child(userCredential.user!.uid).set(
                userMap,
              );
          successSignup = true;
          loading = false;
        }
        await Future.delayed(const Duration(seconds: 2)).then((value) {
          loading = false;
        });
      });
    } catch (e) {
      debugPrintStack();
    }
  }

  @observable
  bool showErrors = false;

  @action
  bool setInvalidSendPressed() => showErrors = true;

  @observable
  bool successSignup = false;
}
