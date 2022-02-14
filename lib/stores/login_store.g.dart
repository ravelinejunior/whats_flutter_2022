// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginStore on _LoginStore, Store {
  Computed<bool>? _$emailValidComputed;

  @override
  bool get emailValid =>
      (_$emailValidComputed ??= Computed<bool>(() => super.emailValid,
              name: '_LoginStore.emailValid'))
          .value;
  Computed<bool>? _$passwordValidComputed;

  @override
  bool get passwordValid =>
      (_$passwordValidComputed ??= Computed<bool>(() => super.passwordValid,
              name: '_LoginStore.passwordValid'))
          .value;
  Computed<bool>? _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: '_LoginStore.isFormValid'))
          .value;
  Computed<Function?>? _$sendPressedValidComputed;

  @override
  Function? get sendPressedValid => (_$sendPressedValidComputed ??=
          Computed<Function?>(() => super.sendPressedValid,
              name: '_LoginStore.sendPressedValid'))
      .value;

  final _$emailAtom = Atom(name: '_LoginStore.email');

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

  final _$passwordAtom = Atom(name: '_LoginStore.password');

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

  final _$showErrorsAtom = Atom(name: '_LoginStore.showErrors');

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

  final _$loadingAtom = Atom(name: '_LoginStore.loading');

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

  final _$successfulLoginAtom = Atom(name: '_LoginStore.successfulLogin');

  @override
  bool get successfulLogin {
    _$successfulLoginAtom.reportRead();
    return super.successfulLogin;
  }

  @override
  set successfulLogin(bool value) {
    _$successfulLoginAtom.reportWrite(value, super.successfulLogin, () {
      super.successfulLogin = value;
    });
  }

  final _$_loginUserAsyncAction = AsyncAction('_LoginStore._loginUser');

  @override
  Future<void> _loginUser() {
    return _$_loginUserAsyncAction.run(() => super._loginUser());
  }

  final _$verifyLoggedUserAsyncAction =
      AsyncAction('_LoginStore.verifyLoggedUser');

  @override
  Future<void> verifyLoggedUser() {
    return _$verifyLoggedUserAsyncAction.run(() => super.verifyLoggedUser());
  }

  final _$_LoginStoreActionController = ActionController(name: '_LoginStore');

  @override
  void setEmail(String value) {
    final _$actionInfo =
        _$_LoginStoreActionController.startAction(name: '_LoginStore.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_LoginStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String value) {
    final _$actionInfo = _$_LoginStoreActionController.startAction(
        name: '_LoginStore.setPassword');
    try {
      return super.setPassword(value);
    } finally {
      _$_LoginStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  bool setInvalidSendPressed() {
    final _$actionInfo = _$_LoginStoreActionController.startAction(
        name: '_LoginStore.setInvalidSendPressed');
    try {
      return super.setInvalidSendPressed();
    } finally {
      _$_LoginStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
password: ${password},
showErrors: ${showErrors},
loading: ${loading},
successfulLogin: ${successfulLogin},
emailValid: ${emailValid},
passwordValid: ${passwordValid},
isFormValid: ${isFormValid},
sendPressedValid: ${sendPressedValid}
    ''';
  }
}
