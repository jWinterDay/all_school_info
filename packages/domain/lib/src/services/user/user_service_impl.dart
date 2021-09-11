import 'package:domain/src/redux/user/user_state.dart';

import 'user_service.dart';

class UserServiceImpl implements UserService {
  @override
  Future<UserState?> fetchUser() {
    throw UnimplementedError();
  }

  @override
  Future<UserState> signInUserWithEmail({required String email, required String password}) {
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    throw UnimplementedError();
  }
}
