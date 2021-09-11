// import 'package:computer/computer.dart';
import 'package:domain/domain.dart';
import 'package:domain/src/redux/user/models/user_type.dart';
import 'package:domain/src/redux/user/user_state.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'user_service.dart';

class UserServiceMock implements UserService {
  @override
  Future<UserState> fetchUser() async {
    // final Computer computer = getIt.get<Computer>();
    // await computer.compute<void, void>(_someExpensiveMethod);
    // await Future<void>.delayed(const Duration(seconds: 1));

    // sleep(const Duration(seconds: 1));

    return const UserState(
      userId: 'some_unique_id',
      firstName: 'Vasya',
      lastName: 'Vasilich',
      classLetter: 'b',
      classNumber: 11,
      classProfile: <String>['phys', 'math'],
      email: 'vasya@example.com',
      phoneNumbers: <String>['8916123', '89169876'],
      userType: UserType.guest,
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
    print('service');

    try {
      final FirebaseAuth instance = FirebaseAuth.instance;

      await instance.signOut();
    }
    //  on FirebaseAuthException catch (exc) {
    //   if (exc.code == 'user-not-found') {
    //     throw const AuthUserNotFoundException('user-not-found');
    //   } else if (exc.code == 'wrong-password') {
    //     throw const AuthWrongPasswordException('wrong-password');
    //   } else if (exc.code == 'invalid-email') {
    //     throw const AuthInvalidEmailException('invalid-email');
    //   } else {
    //     throw const AuthUnknownException('unknown-error');
    //   }
    // }
    catch (exc) {
      throw AuthUnexpectedException(exc.toString());
    }
  }
}
