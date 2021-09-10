import 'package:domain/domain.dart';
import 'package:domain/src/redux/app/app_state.dart';
import 'package:domain/src/redux/user/user_action.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:redux/redux.dart';

Future<void> createUserWwithEmailThunk(
  Store<AppState> store, {
  required String email,
  required String password,
}) async {
  try {
    store.dispatch(const UserAction.changeLoading(value: true));

    final FirebaseAuth instance = FirebaseAuth.instance;

    final UserCredential userCredential = await instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    print('userCredential = ${userCredential.user}');
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      print('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      print('The account already exists for that email.');
    }
  } catch (e) {
    print(e);
  } finally {
    store.dispatch(const UserAction.changeLoading(value: false));
  }
}
