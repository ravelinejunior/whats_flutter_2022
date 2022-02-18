// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MainStore on _MainStore, Store {
  final _$currentUserAtom = Atom(name: '_MainStore.currentUser');

  @override
  UserModel get currentUser {
    _$currentUserAtom.reportRead();
    return super.currentUser;
  }

  @override
  set currentUser(UserModel value) {
    _$currentUserAtom.reportWrite(value, super.currentUser, () {
      super.currentUser = value;
    });
  }

  final _$userListAtom = Atom(name: '_MainStore.userList');

  @override
  List<UserModel> get userList {
    _$userListAtom.reportRead();
    return super.userList;
  }

  @override
  set userList(List<UserModel> value) {
    _$userListAtom.reportWrite(value, super.userList, () {
      super.userList = value;
    });
  }

  final _$isUserLoggedAtom = Atom(name: '_MainStore.isUserLogged');

  @override
  bool get isUserLogged {
    _$isUserLoggedAtom.reportRead();
    return super.isUserLogged;
  }

  @override
  set isUserLogged(bool value) {
    _$isUserLoggedAtom.reportWrite(value, super.isUserLogged, () {
      super.isUserLogged = value;
    });
  }

  final _$verifyLoggedUserAndGetUserDataAsyncAction =
      AsyncAction('_MainStore.verifyLoggedUserAndGetUserData');

  @override
  Future<void> verifyLoggedUserAndGetUserData() {
    return _$verifyLoggedUserAndGetUserDataAsyncAction
        .run(() => super.verifyLoggedUserAndGetUserData());
  }

  final _$getAllUsersAsyncAction = AsyncAction('_MainStore.getAllUsers');

  @override
  Future<void> getAllUsers() {
    return _$getAllUsersAsyncAction.run(() => super.getAllUsers());
  }

  final _$signoutUserAsyncAction = AsyncAction('_MainStore.signoutUser');

  @override
  Future<void> signoutUser() {
    return _$signoutUserAsyncAction.run(() => super.signoutUser());
  }

  @override
  String toString() {
    return '''
currentUser: ${currentUser},
userList: ${userList},
isUserLogged: ${isUserLogged}
    ''';
  }
}
