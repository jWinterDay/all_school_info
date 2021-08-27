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

    _bloc.refresh();

    // _bloc.toggleLogged();
  }

  @override
  void dispose() {
    _bloc.dispose();

    super.dispose();
  }

  List<UiProfileItem> _itemList(UserState userState) {
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
        // last name
        if (userState.lastName != null)
          UiProfileItem(
            title: userState.lastName!,
            icon: Icons.near_me_sharp,
          ),

        // email
        if (userState.email != null)
          UiProfileItem(
            title: userState.email!,
            icon: Icons.near_me_sharp,
          ),
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
                  child: Stack(
                    children: <Widget>[
                      // content
                      CustomScrollView(
                        slivers: <Widget>[
                          // refresh
                          CupertinoSliverRefreshControl(
                            onRefresh: () async {
                              _bloc.refresh();
                            },
                          ),

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
                          const SliverPadding(padding: EdgeInsets.only(bottom: 120)),
                        ],
                      ),

                      // loading
                      if (userState.isLoading)
                        const Center(
                          child: CupertinoActivityIndicator(),
                        ),
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
