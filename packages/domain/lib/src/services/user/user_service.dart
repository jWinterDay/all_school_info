import 'package:domain/src/redux/user/user_state.dart';

abstract class UserService {
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
  });

  Future<UserState?> fetchUser();

  Future<UserState> signInUserWithEmail({
    required String email,
    required String password,
  });

  Future<void> signOut();
}
