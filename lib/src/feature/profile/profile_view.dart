import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:all_school_info/src/generated/l10n.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import 'models/ui_profile_item.dart';
import 'profile_bloc.dart';
import 'widgets/profile_item.dart';

class ProfileView extends StatefulWidget {
  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final ProfileBloc _bloc = ProfileBloc();

  @override
  void initState() {
    super.initState();

    _bloc.toggleLogged();
  }

  @override
  void dispose() {
    _bloc.dispose();

    super.dispose();
  }

  List<UiProfileItem> _itemList(UserState userState) {
    print('logged = ${userState.loggedIn}');

    return <UiProfileItem>[
      if (!userState.loggedIn) ...<UiProfileItem>[
        // not logged in
        UiProfileItem(
          title: AllSchoolInfoIntl.of(context).notLoggedIn,
          icon: Icons.login,
        ),
      ] else ...<UiProfileItem>[
        // first name
        if (userState.firstName != null)
          UiProfileItem(
            title: userState.firstName!,
            icon: Icons.near_me_sharp,
          ),
        // second name
      ]
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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

          // scroll content
          StoreConnector<AppState, UserState>(
            converter: (Store<AppState> store) => store.state.userState,
            builder: (_, UserState userState) {
              return Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: CustomScrollView(
                    slivers: <Widget>[
                      // refresh
                      CupertinoSliverRefreshControl(
                        onRefresh: () async {
                          _bloc.refresh();
                        },
                      ),

                      // content
                      SliverList(
                        delegate: SliverChildListDelegate(
                          _itemList(userState).map((UiProfileItem e) {
                            return ProfileItem(
                              uiProfileItem: e,
                            );
                          }).toList(),
                        ),
                      ),

                      // padding
                      const SliverPadding(padding: EdgeInsets.only(bottom: 120))
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
