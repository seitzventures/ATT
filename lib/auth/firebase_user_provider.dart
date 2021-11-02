import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class ATTDSeriesFirebaseUser {
  ATTDSeriesFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

ATTDSeriesFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<ATTDSeriesFirebaseUser> aTTDSeriesFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<ATTDSeriesFirebaseUser>(
            (user) => currentUser = ATTDSeriesFirebaseUser(user));
