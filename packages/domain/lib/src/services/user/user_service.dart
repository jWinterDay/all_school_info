import 'package:domain/src/redux/user/user_state.dart';

abstract class UserService {
  Future<UserState?> fetchUser();

  Future<UserState> signInUserWithEmail({
    required String email,
    required String password,
  });

  Future<void> signOut();
}
