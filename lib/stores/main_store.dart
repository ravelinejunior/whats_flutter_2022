import 'dart:async';
import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:whats_flutter/data/model/user_model.dart';
part 'main_store.g.dart';

class MainStore = _MainStore with _$MainStore;

abstract class _MainStore with Store {
  final _auth = FirebaseAuth.instance;
  final _userRef = FirebaseDatabase.instance.ref('Users');

  @observable
  UserModel currentUser = UserModel();

  @observable
  List<UserModel> userList = [];

  late StreamSubscription userStream;

  _MainStore() {
    verifyLoggedUserAndGetUserData();
    getAllUsers();
  }

  @action
  Future<void> verifyLoggedUserAndGetUserData() async {
    final firebaseUser = _auth.currentUser;
    if (firebaseUser != null) {
      userStream = _userRef.child(firebaseUser.uid).onValue.listen(
        (event) {
          final DataSnapshot snapshot = event.snapshot;
          currentUser = UserModel(
            name: snapshot.child('name').value.toString(),
            email: snapshot.child('email').value.toString(),
            age: snapshot.child('age').value.toString(),
            phone: snapshot.child('phone').value.toString(),
          );
          debugPrint(currentUser.toString());
        },
      );
    }
  }

  @action
  Future<void> getAllUsers() async {
    _userRef.onValue.listen(
      (event) {
        Map<String, dynamic> maps =
            Map.from(event.snapshot.value as Map<dynamic, dynamic>);

        maps.values.forEach((value) {
          userList.add(UserModel.fromMap(Map.from(value)));
        });
      },
    );
  }
}
