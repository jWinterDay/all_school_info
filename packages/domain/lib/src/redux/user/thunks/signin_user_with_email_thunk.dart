import 'package:domain/domain.dart';
import 'package:domain/src/redux/app/app_state.dart';
import 'package:domain/src/redux/user/user_action.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:redux/redux.dart';

Future<void> signinUserWwithEmailThunk(
  Store<AppState> store, {
  required String email,
  required String password,
}) async {
  try {
    store.dispatch(const UserAction.changeLoading(value: true));

    print('thunk email = $email pass = $password');
    final FirebaseAuth instance = FirebaseAuth.instance;

    final UserCredential userCredential = await instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    print('userCredential = ${userCredential}');

    // view user
    // final User? currentUser = FirebaseAuth.instance.currentUser;

    // if (currentUser != null) {
    // print(currentUser);
    // }

    // verify
    // User? user = FirebaseAuth.instance.currentUser;

    // if (user != null && !user.emailVerified) {
    //   await user.sendEmailVerification();
    // }
  } on FirebaseAuthException catch (exc) {
    if (exc.code == 'user-not-found') {
      store.dispatch(const UserAction.authException(AuthUserNotFoundException('user-not-found')));
      // throw const AuthUserNotFoundException('user-not-found');
    } else if (exc.code == 'wrong-password') {
      store.dispatch(const UserAction.authException(AuthWrongPasswordException('wrong-password')));
      // throw const AuthWrongPasswordException('wrong-password');
    } else if (exc.code == 'invalid-email') {
      store.dispatch(const UserAction.authException(AuthInvalidEmailException('invalid-email')));
      // throw const AuthWrongPasswordException('wrong-password');
    } else {
      store.dispatch(const UserAction.authException(AuthUnknownException('unknown-error')));
    }
  } catch (exc) {
    store.dispatch(UserAction.authException(AuthUnexpectedException(exc.toString())));
    // rethrow;
  } finally {
    store.dispatch(const UserAction.changeLoading(value: false));
  }
}
