// import 'package:computer/computer.dart';
import 'package:domain/domain.dart';
import 'package:domain/src/redux/user/user_state.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'user_service.dart';

class UserServiceMock implements UserService {
  @override
  Future<UserState?> fetchUser() async {
    // try {
    final User? user = FirebaseAuth.instance.currentUser;

    if (user == null) {
      return null;
    }

    return UserState(
      userId: user.uid,
      email: user.email,
      accessGroups: <String>[
        'class_7',
      ],
      availableAccessGroups: <String>[
        'class_1',
        'class_2',
        'class_7',
      ],
    );
  }

  @override
  Future<UserState> signInUserWithEmail({required String email, required String password}) async {
    try {
      final FirebaseAuth instance = FirebaseAuth.instance;

      final UserCredential userCredential = await instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      // print('[service] userCredential = ${userCredential}');

      return UserState(
        userId: userCredential.user?.uid,
        email: email,
        emailVerified: userCredential.user?.emailVerified ?? false,
        isAnonymous: userCredential.user?.isAnonymous ?? true,

        //
        firstName: 'Vasya',
        lastName: 'Sidorov',
        phoneNumbers: <String>['8913131', '84353453'],
        classNumber: 7,
        classLetter: 'b',
        classProfile: <String>['math', 'phys'],
        accessGroups: <String>[
          'class_7',
        ],
        availableAccessGroups: <String>[
          'class_1',
          'class_2',
          'class_7',
        ],
      );
    } on FirebaseAuthException catch (exc) {
      if (exc.code == 'user-not-found') {
        throw const AuthUserNotFoundException('user-not-found');
      } else if (exc.code == 'wrong-password') {
        throw const AuthWrongPasswordException('wrong-password');
      } else if (exc.code == 'invalid-email') {
        throw const AuthInvalidEmailException('invalid-email');
      } else {
        throw const AuthUnknownException('unknown-error');
      }
    } catch (exc) {
      throw AuthUnexpectedException(exc.toString());
    }
  }

  @override
  Future<void> signOut() async {
    try {
      final FirebaseAuth instance = FirebaseAuth.instance;

      await instance.signOut();
    } catch (exc) {
      throw AuthUnexpectedException(exc.toString());
    }
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
  }) async {
    try {
      final FirebaseAuth instance = FirebaseAuth.instance;

      final UserCredential userCredential = await instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      return UserState(
        userId: userCredential.user?.uid,
        email: userCredential.user?.email,
        firstName: firstName,
        lastName: lastName,
        accessGroups: accessGroups,
        availableAccessGroups: availableAccessGroups,
        phoneNumbers: phoneNumbers,
        classNumber: classNumber,
        classLetter: classLetter,
        classProfile: classProfile,
        classroomManagement: classroomManagement,
      );
    } on FirebaseAuthException catch (exc) {
      print('------create service exc = $exc');
      if (exc.code == 'weak-password') {
        throw const AuthWeakPasswordException('weak-password');
      } else if (exc.code == 'email-already-in-use') {
        throw const AuthEmailAlreadyInUseException('email-already-in-use');
      } else {
        throw const AuthUnknownException('unknown-error');
      }
    } catch (exc) {
      throw AuthUnexpectedException(exc.toString());
    }
  }
}
