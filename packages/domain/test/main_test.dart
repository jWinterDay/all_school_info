import 'package:domain/domain.dart';
import 'package:redux/redux.dart';
import 'package:test/test.dart';

/// to run tests write `flutter test test/entry_point.dart` in terminal
void main() {
  group('states', () {
    test('user_state', () {
      const UserState initUserState = UserState();

      // print(initUserState.toJson());

      expect(initUserState.loggedIn, false);
    });

    test('app_state', () {
      const AppState appState = AppState();

      // print(appState.toJson());

      expect(appState.testMode, isFalse);

      expect(appState.userState, isNotNull);
      expect(appState.userState.loggedIn, false);

      expect(appState.announcementState, isNotNull);

      expect(appState.announcementState.announcementList, isNull);
    });

    // test('palette_state', () {
    //   const PaletteState paletteState = PaletteState();

    //   expect(paletteState.selectedDmcCodes, isEmpty);
    // });
  });

  group('domain', () {
    test('user', () async {
      final Store<AppState> appStore = AppDomainProvider.appStore;

      // logged in
      expect(appStore.state.userState.loggedIn, false);
      appStore.dispatch(const UserLoggedInAction(loggedIn: true));
      expect(appStore.state.userState.loggedIn, true);
    });

    // test('palette', () async {
    //   final Store<AppState> appStore = AppDomainProvider.appStore;

    //   // selected codes
    //   expect(appStore.state.paletteState.selectedDmcCodes, isEmpty);
    //   appStore.dispatch(const SelectDmcCodesAction(selectedDmcCodes: <String>{'1'}));
    //   expect(appStore.state.paletteState.selectedDmcCodes.length, 1);
    //   appStore.dispatch(const ClearDmcCodesAction());
    //   expect(appStore.state.paletteState.selectedDmcCodes, isEmpty);

    //   // dmc map
    //   expect(Palette.dmcMap, isNotEmpty);
    //   expect(appStore.state.paletteState.dmcMap, isEmpty);
    //   appStore.dispatch(ChangeDmcMapAction(dmcMap: Palette.dmcMap));
    //   expect(appStore.state.paletteState.dmcMap.length, Palette.dmcMap.length);
    // });
  });
}
