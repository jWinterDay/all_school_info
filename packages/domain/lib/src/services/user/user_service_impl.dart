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

  @override
  Future<UserState> createUserWithEmail({
    required String email,
    required String password,
    String? firstName,
    String? lastName,
    List<String> accessGroups = const <String>[],
    List<String> availableAccessGroups = const <String>[],
    List<String>? phoneNumbers = const <String>[],
    int? classNumber,
    String? classLetter,
    List<String>? classProfile,
    bool classroomManagement = false,
  }) {
    // TODO: implement createUserWithEmail
    throw UnimplementedError();
  }
}
