// import 'package:computer/computer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:domain/domain.dart';
import 'package:domain/src/redux/user/user_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:utils/logger.dart';

import 'user_service.dart';

class UserServiceMock implements UserService {
  static const String _collectionName = 'users';
  CollectionReference<Map<String, dynamic>> get _fbCollection => FirebaseFirestore.instance.collection(_collectionName);

  @override
  Future<UserState?> fetchUser() async {
    // firebase auth
    final User? user = FirebaseAuth.instance.currentUser;

    if (user == null) {
      return null;
    }

    // firestore
    final QuerySnapshot<Map<String, dynamic>> userFullInfo = await _fbCollection
        .where(
          'user_id',
          isEqualTo: user.uid,
        )
        .get();

    if (userFullInfo.docs.isEmpty) {
      throw const AuthUserNotFoundException('No provided additional info about user');
    }
    if (userFullInfo.docs.length > 1) {
      throw const AuthMultiplyRowsException('There are multiply users with the same ids');
    }

    final QueryDocumentSnapshot<Map<String, dynamic>> dataSnapshot = userFullInfo.docs.first;
    final UserState addUserState = UserState.fromJson(dataSnapshot.data());

    return UserState(
      userId: user.uid,
      email: user.email,
      emailVerified: user.emailVerified,
      isAnonymous: user.isAnonymous,

      //
      firstName: addUserState.firstName,
      lastName: addUserState.lastName,
      phoneNumbers: addUserState.phoneNumbers,
      classNumber: addUserState.classNumber,
      classLetter: addUserState.classLetter,
      classProfile: addUserState.classProfile,
      accessGroups: addUserState.accessGroups,
      availableAccessGroups: addUserState.availableAccessGroups,
      classroomManagement: addUserState.classroomManagement,
    );
  }

  @override
  Future<UserState> signInUserWithEmail({required String email, required String password}) async {
    try {
      final FirebaseAuth instance = FirebaseAuth.instance;

      // firebase auth
      final UserCredential userCredential = await instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      // firestore
      if (userCredential.user?.uid == null) {
        throw const AuthUnexpectedException('Failed to receive user credentials');
      }

      final QuerySnapshot<Map<String, dynamic>> userFullInfo = await _fbCollection
          .where(
            'user_id',
            isEqualTo: userCredential.user!.uid,
          )
          .get();

      if (userFullInfo.docs.isEmpty) {
        throw const AuthUserNotFoundException('No provided additional info about user');
      }
      if (userFullInfo.docs.length > 1) {
        throw const AuthMultiplyRowsException('There are multiply users with the same ids');
      }

      final QueryDocumentSnapshot<Map<String, dynamic>> dataSnapshot = userFullInfo.docs.first;
      final UserState addUserState = UserState.fromJson(dataSnapshot.data());

      // result
      return UserState(
        userId: userCredential.user?.uid,
        email: email,
        emailVerified: userCredential.user?.emailVerified ?? false,
        isAnonymous: userCredential.user?.isAnonymous ?? true,

        //
        firstName: addUserState.firstName,
        lastName: addUserState.lastName,
        phoneNumbers: addUserState.phoneNumbers,
        classNumber: addUserState.classNumber,
        classLetter: addUserState.classLetter,
        classProfile: addUserState.classProfile,
        accessGroups: addUserState.accessGroups,
        availableAccessGroups: addUserState.availableAccessGroups,
        classroomManagement: addUserState.classroomManagement,
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

      // firebase auth
      final UserCredential userCredential = await instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // print('[create service] userCredential = $userCredential');

      // firestore
      final UserState addUserData = UserState(
        userId: userCredential.user?.uid,
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
      final Map<String, dynamic> fullInfoData = addUserData.toJson();

      // final DocumentReference<Map<String, dynamic>> result =
      await _fbCollection.add(fullInfoData);
      // print('[create service] result = $result');

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
      // print('------create service exc = $exc');
      if (exc.code == 'weak-password') {
        throw const AuthWeakPasswordException('weak-password');
      } else if (exc.code == 'Password should be at least 6 characters') {
        throw const AuthEmailAlreadyInUseException('The email address is already in use by another account');
      } else {
        throw const AuthUnknownException('unknown-error');
      }
    } on FirebaseException catch (exc) {
      if (exc.code == 'permission-denied') {
        throw const AuthEmailPermissionDeniedException(
          'The caller does not have permission to execute the specified operation',
        );
      } else if (exc.code == 'failed-precondition') {
        throw AuthUnexpectedException(exc.toString());
      } else {
        throw const AuthUnknownException('unknown-error');
      }
    } catch (exc, stackTrace) {
      logger.e(exc, exc.runtimeType, stackTrace);
      throw AuthUnexpectedException(exc.toString());
    }
  }
}
