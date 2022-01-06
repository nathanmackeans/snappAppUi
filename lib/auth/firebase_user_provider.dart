import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class SnappFirebaseUser {
  SnappFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

SnappFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<SnappFirebaseUser> snappFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<SnappFirebaseUser>((user) => currentUser = SnappFirebaseUser(user));
