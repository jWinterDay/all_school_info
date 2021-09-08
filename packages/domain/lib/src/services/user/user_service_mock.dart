// import 'package:computer/computer.dart';
import 'package:domain/domain.dart';
import 'package:domain/src/redux/user/models/user_type.dart';
import 'package:domain/src/redux/user/user_state.dart';

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
}
