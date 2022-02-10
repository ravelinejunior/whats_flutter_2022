// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SignupStore on _SignupStoreBase, Store {
  Computed<bool>? _$nameValidComputed;

  @override
  bool get nameValid =>
      (_$nameValidComputed ??= Computed<bool>(() => super.nameValid,
              name: '_SignupStoreBase.nameValid'))
          .value;
  Computed<bool>? _$emailValidComputed;

  @override
  bool get emailValid =>
      (_$emailValidComputed ??= Computed<bool>(() => super.emailValid,
              name: '_SignupStoreBase.emailValid'))
          .value;
  Computed<String?>? _$ageErrorComputed;

  @override
  String? get ageError =>
      (_$ageErrorComputed ??= Computed<String?>(() => super.ageError,
              name: '_SignupStoreBase.ageError'))
          .value;
  Computed<bool>? _$phoneValidComputed;

  @override
  bool get phoneValid =>
      (_$phoneValidComputed ??= Computed<bool>(() => super.phoneValid,
              name: '_SignupStoreBase.phoneValid'))
          .value;
  Computed<bool>? _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: '_SignupStoreBase.isFormValid'))
          .value;
  Computed<Function?>? _$sendPressedValidComputed;

  @override
  Function? get sendPressedValid => (_$sendPressedValidComputed ??=
          Computed<Function?>(() => super.sendPressedValid,
              name: '_SignupStoreBase.sendPressedValid'))
      .value;

  final _$loadingAtom = Atom(name: '_SignupStoreBase.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$nameAtom = Atom(name: '_SignupStoreBase.name');

  @override
  String? get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String? value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$emailAtom = Atom(name: '_SignupStoreBase.email');

  @override
  String? get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String? value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$ageAtom = Atom(name: '_SignupStoreBase.age');

  @override
  String? get age {
    _$ageAtom.reportRead();
    return super.age;
  }

  @override
  set age(String? value) {
    _$ageAtom.reportWrite(value, super.age, () {
      super.age = value;
    });
  }

  final _$phoneAtom = Atom(name: '_SignupStoreBase.phone');

  @override
  String? get phone {
    _$phoneAtom.reportRead();
    return super.phone;
  }

  @override
  set phone(String? value) {
    _$phoneAtom.reportWrite(value, super.phone, () {
      super.phone = value;
    });
  }

  final _$passwordAtom = Atom(name: '_SignupStoreBase.password');

  @override
  String? get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String? value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$confirmPasswordAtom = Atom(name: '_SignupStoreBase.confirmPassword');

  @override
  String? get confirmPassword {
    _$confirmPasswordAtom.reportRead();
    return super.confirmPassword;
  }

  @override
  set confirmPassword(String? value) {
    _$confirmPasswordAtom.reportWrite(value, super.confirmPassword, () {
      super.confirmPassword = value;
    });
  }

  final _$showErrorsAtom = Atom(name: '_SignupStoreBase.showErrors');

  @override
  bool get showErrors {
    _$showErrorsAtom.reportRead();
    return super.showErrors;
  }

  @override
  set showErrors(bool value) {
    _$showErrorsAtom.reportWrite(value, super.showErrors, () {
      super.showErrors = value;
    });
  }

  final _$successSignupAtom = Atom(name: '_SignupStoreBase.successSignup');

  @override
  bool get successSignup {
    _$successSignupAtom.reportRead();
    return super.successSignup;
  }

  @override
  set successSignup(bool value) {
    _$successSignupAtom.reportWrite(value, super.successSignup, () {
      super.successSignup = value;
    });
  }

  final _$_signupUserAsyncAction = AsyncAction('_SignupStoreBase._signupUser');

  @override
  Future<void> _signupUser() {
    return _$_signupUserAsyncAction.run(() => super._signupUser());
  }

  final _$_SignupStoreBaseActionController =
      ActionController(name: '_SignupStoreBase');

  @override
  void isLoading(bool value) {
    final _$actionInfo = _$_SignupStoreBaseActionController.startAction(
        name: '_SignupStoreBase.isLoading');
    try {
      return super.isLoading(value);
    } finally {
      _$_SignupStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setName(String value) {
    final _$actionInfo = _$_SignupStoreBaseActionController.startAction(
        name: '_SignupStoreBase.setName');
    try {
      return super.setName(value);
    } finally {
      _$_SignupStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String value) {
    final _$actionInfo = _$_SignupStoreBaseActionController.startAction(
        name: '_SignupStoreBase.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_SignupStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAge(String value) {
    final _$actionInfo = _$_SignupStoreBaseActionController.startAction(
        name: '_SignupStoreBase.setAge');
    try {
      return super.setAge(value);
    } finally {
      _$_SignupStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPhone(String value) {
    final _$actionInfo = _$_SignupStoreBaseActionController.startAction(
        name: '_SignupStoreBase.setPhone');
    try {
      return super.setPhone(value);
    } finally {
      _$_SignupStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String value) {
    final _$actionInfo = _$_SignupStoreBaseActionController.startAction(
        name: '_SignupStoreBase.setPassword');
    try {
      return super.setPassword(value);
    } finally {
      _$_SignupStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setConfirmPassword(String value) {
    final _$actionInfo = _$_SignupStoreBaseActionController.startAction(
        name: '_SignupStoreBase.setConfirmPassword');
    try {
      return super.setConfirmPassword(value);
    } finally {
      _$_SignupStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  bool setInvalidSendPressed() {
    final _$actionInfo = _$_SignupStoreBaseActionController.startAction(
        name: '_SignupStoreBase.setInvalidSendPressed');
    try {
      return super.setInvalidSendPressed();
    } finally {
      _$_SignupStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading},
name: ${name},
email: ${email},
age: ${age},
phone: ${phone},
password: ${password},
confirmPassword: ${confirmPassword},
showErrors: ${showErrors},
successSignup: ${successSignup},
nameValid: ${nameValid},
emailValid: ${emailValid},
ageError: ${ageError},
phoneValid: ${phoneValid},
isFormValid: ${isFormValid},
sendPressedValid: ${sendPressedValid}
    ''';
  }
}
