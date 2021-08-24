abstract class UserAction {
  const UserAction();
}

class UserLoggedInAction extends UserAction {
  const UserLoggedInAction({
    required this.loggedIn,
  });

  final bool loggedIn;
}

class UserAccessGroupAction extends UserAction {
  const UserAccessGroupAction({
    required this.accessGroups,
  });

  final List<String> accessGroups;
}

class UserCredsAction extends UserAction {
  const UserCredsAction({
    required this.userId,
    required this.firstName,
    required this.lastName,
    required this.email,
  });

  final String userId;
  final String firstName;
  final String lastName;
  final String email;
}

class UserTokensAction extends UserAction {
  const UserTokensAction({
    required this.token,
    required this.refreshToken,
  });

  final String token;
  final String refreshToken;
}
