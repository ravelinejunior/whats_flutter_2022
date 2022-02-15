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
  late UserModel _currentUser;

  _MainStore() {
    verifyLoggedUserAndGetUserData();
  }

  @action
  Future<void> verifyLoggedUserAndGetUserData() async {
    final firebaseUser = _auth.currentUser;
    if (firebaseUser != null) {
      final snapshot = await _userRef.child(firebaseUser.uid).get();
      debugPrint(snapshot.value.toString());
      debugPrint(firebaseUser.uid);
    }
  }
}
