import 'package:all_school_info/src/feature/schedule/details/schedule_details_view.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_route/src/matcher/route_matcher.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:all_school_info/src/generated/l10n.dart';
import 'package:design/design.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:all_school_info/src/routes/autoroutes.gr.dart' as gr;

import 'models/ui_schedule_item.dart';
import 'schedule_bloc.dart';
import 'widgets/schedule_item.dart';

class ScheduleView extends StatefulWidget {
  @override
  _ScheduleViewState createState() => _ScheduleViewState();
}

class _ScheduleViewState extends State<ScheduleView> {
  final ScheduleBloc _bloc = ScheduleBloc();

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

  List<UiScheduleItem> _itemList() {
    return <UiScheduleItem>[
      UiScheduleItem(
        title: AllSchoolInfoIntl.of(context).scheduleViewTitle,
        icon: Icons.baby_changing_station,
        iconColor: context.design.palette.primary,
        callback: () async {
          await AutoRouter.of(context).push(const gr.ScheduleDetailsViewRoute());
        },
      ),
      UiScheduleItem(
        title: AllSchoolInfoIntl.of(context).scheduleLastNotifications,
        icon: Icons.manage_accounts_outlined,
        iconColor: context.design.palette.accent,
        callback: () async {},
      ),
      UiScheduleItem(
        title: AllSchoolInfoIntl.of(context).scheduleRatings,
        icon: Icons.radio_button_unchecked_outlined,
        iconColor: context.design.palette.averageProgress,
        callback: () async {},
      ),
      UiScheduleItem(
        title: AllSchoolInfoIntl.of(context).scheduleNews,
        icon: Icons.tag_faces,
        iconColor: context.design.palette.danger,
        callback: () async {},
      ),
      UiScheduleItem(
        title: AllSchoolInfoIntl.of(context).scheduleHomework,
        icon: Icons.elderly,
        iconColor: context.design.palette.primaryDark,
        callback: () async {},
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildListDelegate(
            _itemList().map((UiScheduleItem uiScheduleItem) {
              return ScheduleItem(
                uiScheduleItem: uiScheduleItem,
              );
            }).toList(),
          ),
        ),

        // padding
        const SliverPadding(padding: EdgeInsets.only(bottom: 120)),
      ],
    );
    // return StoreConnector<AppState, UserState>(
    //   converter: (Store<AppState> store) => store.state.userState,
    //   builder: (_, UserState userState) {
    //     return const Text('Schedule');
    //   },
    // );
  }
}
