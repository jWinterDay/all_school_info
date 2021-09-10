import 'package:all_school_info/src/generated/l10n.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
    // logged in
    if (!userState.loggedIn) {
      return <UiProfileItem>[
        UiProfileItem(
          title: AllSchoolInfoIntl.of(context).notLoggedIn,
          icon: Icons.login,
        ),
      ];
    }

    return <UiProfileItem>[
      // management
      if (userState.accessGroups.isNotEmpty)
        const UiProfileItem(
          title: 'my access group',
          icon: Icons.manage_accounts,
        ),
      if (userState.accessGroups.isNotEmpty)
        ...userState.accessGroups.map((String accessGroup) {
          return UiProfileItem(
            title: accessGroup,
            subItem: true,
            // icon: Icons.format_list_numbered,
          );
        }),

      UiProfileItem(
        title: 'type: ${userState.userType.toString()}',
        icon: Icons.manage_accounts,
      ),

      if (userState.availableAccessGroups.isNotEmpty)
        const UiProfileItem(
          title: 'available access groups',
          icon: Icons.manage_accounts,
        ),
      if (userState.availableAccessGroups.isNotEmpty)
        ...userState.availableAccessGroups.map((String accessGroup) {
          return UiProfileItem(
            title: accessGroup,
            subItem: true,
            // icon: Icons.format_list_numbered,
          );
        }),

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
          icon: Icons.h_plus_mobiledata,
        ),

      // email
      if (userState.email != null)
        UiProfileItem(
          title: userState.email!,
          icon: Icons.radar,
        ),

      if (userState.userType == UserType.learner) ...<UiProfileItem>[
        // class number
        if (userState.userType == UserType.learner)
          UiProfileItem(
            title: 'Class Number: ${userState.classNumber} (${userState.classLetter})',
            icon: Icons.format_list_numbered,
          ),
      ],
      if (userState.classProfile.isNotEmpty)
        const UiProfileItem(
          title: 'Class profile',
          icon: Icons.format_list_numbered,
        ),

      if (userState.userType == UserType.learner)
        ...userState.classProfile.map((String classProfile) {
          return UiProfileItem(
            title: classProfile,
            subItem: true,
            // icon: Icons.format_list_numbered,
          );
        }),

      if (userState.phoneNumbers != null)
        const UiProfileItem(
          title: 'Phone numbers',
          icon: Icons.format_list_numbered,
        ),
      ...userState.phoneNumbers!.map((String phone) {
        return UiProfileItem(
          title: phone,
          subItem: true,
          // icon: Icons.format_list_numbered,
        );
      }),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
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
          distinct: true,
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
                            _itemList(userState).map((UiProfileItem uiProfileItem) {
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 2),
                                child: ProfileItem(
                                  uiProfileItem: uiProfileItem,
                                ),
                              );
                            }).toList(),
                          ),
                        ),

                        // padding
                        const SliverPadding(padding: EdgeInsets.only(bottom: 120)),
                      ],
                    ),

                    // loading
                    if (userState.loading)
                      const Center(
                        child: CupertinoActivityIndicator(
                          radius: 42,
                        ),
                      ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
