import 'package:all_school_info/src/generated/l10n.dart';
import 'package:all_school_info/src/routes/autoroutes.gr.dart' as gr;
import 'package:all_school_info/src/ui_utils/ui_utils.dart';
import 'package:auto_route/auto_route.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:overlay_support/overlay_support.dart' as os;
import 'package:redux/redux.dart';
import 'package:design/design.dart';

import 'models/ui_profile_item.dart';
import 'profile_bloc.dart';
import 'widgets/profile_item_sliver_list.dart';

class ProfileView extends StatefulWidget {
  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final ProfileBloc _bloc = ProfileBloc();
  final os.TransientKey<String> _dialogKey = const os.TransientKey<String>('transient');
  final ValueKey<String> _key = const ValueKey<String>('my overlay');
  os.OverlaySupportEntry? _entry;

  @override
  void initState() {
    super.initState();

    // _bloc.refresh();

    // _bloc.toggleLogged();
  }

  @override
  void dispose() {
    _bloc.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: UiUtils.homeBgDecoration(context),
      child: Column(
        children: <Widget>[
          // title
          Padding(
            padding: const EdgeInsets.all(8),
            child: Center(
              child: Text(
                AllSchoolInfoIntl.of(context).profileViewTitle,
              ),
            ),
          ),

          // content
          Expanded(
            child: CustomScrollView(
              slivers: <Widget>[
                CupertinoSliverRefreshControl(
                  onRefresh: () async {
                    print('refr1');
                    // _bloc.refresh();
                  },
                ),

                // items
                const ProfileItemSliverList(),

                // sign in / sign out
                SliverToBoxAdapter(
                  child: StoreConnector<AppState, bool>(
                    distinct: true,
                    converter: (Store<AppState> store) => store.state.userState.loggedIn,
                    builder: (_, bool loggedIn) {
                      return Padding(
                        padding: const EdgeInsets.all(8),
                        child: loggedIn
                            ? ElevatedButton(
                                child: Text(AllSchoolInfoIntl.of(context).signOut),
                                onPressed: () async {
                                  final bool? result = await showDialog<bool>(
                                    context: context,
                                    builder: (_) {
                                      return AlertDialog(
                                        content: Text(AllSchoolInfoIntl.of(context).makeSureWannaQuit),
                                        actions: <Widget>[
                                          ElevatedButton(
                                            child: Text(AllSchoolInfoIntl.of(context).yes),
                                            style: ElevatedButton.styleFrom(
                                              primary: context.design.palette.gray12,
                                              onPrimary: Colors.black,
                                            ),
                                            onPressed: () {
                                              Navigator.of(context).pop(true);
                                            },
                                          ),
                                          ElevatedButton(
                                            child: Text(AllSchoolInfoIntl.of(context).no),
                                            onPressed: () {
                                              Navigator.of(context).pop(false);
                                            },
                                          ),
                                        ],
                                      );
                                    },
                                  );

                                  if (result == true) {
                                    _bloc.signOut();
                                  }
                                },
                              )
                            : ElevatedButton(
                                child: Text(AllSchoolInfoIntl.of(context).signIn),
                                onPressed: () {
                                  AutoRouter.of(context).push(
                                    const gr.AuthViewRoute(),
                                  );
                                },
                              ),
                      );
                    },
                  ),
                ),

                // create (test mode)
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: ElevatedButton(
                      child: const Text('Create (test mode)'),
                      onPressed: () => _bloc.createNewUser('f@t.com', 'SuperSecurePassword'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
