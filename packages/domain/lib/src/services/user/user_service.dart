import 'package:domain/src/redux/user/user_state.dart';

abstract class UserService {
  Future<UserState> fetchUser();
}
