import 'package:domain/src/init_domain.dart';
import 'package:domain/src/redux/announcement/announcement_action.dart';
import 'package:domain/src/redux/announcement/models/announcement_model.dart';
import 'package:domain/src/redux/app/app_state.dart';
import 'package:domain/src/redux/user/user_actions.dart';
import 'package:domain/src/services/announcement/announcement_service.dart';
import 'package:redux/redux.dart';

void fetchUserThunk(Store<AppState> store) async {
  store..dispatch(const UserLoggedInAction(loggedIn: false))..dispatch(const UserIsLoadingAction(loading: true));

  await Future<void>.delayed(const Duration(seconds: 2));

  store
    ..dispatch(const UserLoggedInAction(loggedIn: true))
    ..dispatch(const UserIsLoadingAction(loading: false))
    ..dispatch(
      const UserCredsAction(
        firstName: 'first name',
        lastName: 'last name',
        email: 'example@gmail.com',
        userId: 'some_unique_id',
      ),
    );

  // store.dispatch(const AnnouncementAction.changeLoading(value: true));

  // final AnnouncementService announcementService = getIt.get<AnnouncementService>();
  // final List<AnnouncementModel> list = await announcementService.fetchAnnouncements();

  // store
  //   ..dispatch(const AnnouncementAction.changeLoading(value: false))
  //   ..dispatch(AnnouncementAction.addAnnouncementList(list: list));
}
