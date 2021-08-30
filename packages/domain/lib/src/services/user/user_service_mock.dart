import 'dart:io';

import 'package:domain/src/redux/user/models/user_type.dart';
import 'package:domain/src/redux/user/user_state.dart';

import 'user_service.dart';

class UserServiceMock implements UserService {
  @override
  Future<UserState> fetchUser() async {
    // await Future<void>.delayed(const Duration(seconds: 1));

    sleep(const Duration(seconds: 1));

    return const UserState(
      userId: 'some_unique_id',
      firstName: 'Vasya',
      lastName: 'Vasilich',
      classLetter: 'b',
      classNumber: 11,
      classProfile: <String>['phys', 'math'],
      email: 'vasya@example.com',
      phoneNumbers: <String>['8916123', '89169876'],
      userType: UserType.learner,
    );
  }
}