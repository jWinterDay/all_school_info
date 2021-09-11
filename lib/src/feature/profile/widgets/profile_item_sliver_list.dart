import 'package:all_school_info/src/feature/profile/models/ui_profile_item.dart';
import 'package:all_school_info/src/generated/l10n.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import 'profile_item.dart';

class ProfileItemSliverList extends StatelessWidget {
  const ProfileItemSliverList();

  String _classFullInfoStr({
    required BuildContext context,
    required int number,
    required String? letter,
  }) {
    if (letter == null) {
      return AllSchoolInfoIntl.of(context).classFullStr(number);
    }

    return AllSchoolInfoIntl.of(context).classFullStrWithLetter(number, letter);
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, UserState>(
      distinct: true,
      converter: (Store<AppState> store) => store.state.userState,
      builder: (_, UserState userState) {
        return SliverList(
          delegate: SliverChildListDelegate(
            <Widget>[
              // first name
              if (userState.firstName != null)
                ProfileItem(
                  uiProfileItem: UiProfileItem(
                    title: userState.firstName!,
                    icon: Icons.near_me_sharp,
                  ),
                ),
              // last name
              if (userState.lastName != null)
                ProfileItem(
                  uiProfileItem: UiProfileItem(
                    title: userState.lastName!,
                    icon: Icons.h_plus_mobiledata,
                  ),
                ),
              // email
              if (userState.email != null)
                ProfileItem(
                  uiProfileItem: UiProfileItem(
                    title: userState.email!,
                    icon: Icons.radar,
                  ),
                ),

              // class number
              if (userState.classNumber != null)
                ProfileItem(
                  uiProfileItem: UiProfileItem(
                    title: _classFullInfoStr(
                      context: context,
                      number: userState.classNumber!,
                      letter: userState.classLetter,
                    ),
                    icon: Icons.format_list_numbered,
                  ),
                ),
              // class profile
              if (userState.classProfile != null) ...<Widget>[
                ProfileItem(
                  uiProfileItem: UiProfileItem(
                    title: AllSchoolInfoIntl.of(context).classProfile,
                    icon: Icons.info_rounded,
                  ),
                ),
                ...userState.classProfile!.map((String e) {
                  return ProfileItem(
                    uiProfileItem: UiProfileItem(
                      title: AllSchoolInfoIntl.of(context).classProfile,
                      subItem: true,
                      icon: Icons.format_list_numbered,
                    ),
                  );
                }).toList()
              ],
            ],
          ),
        );
      },
    );
  }
}
