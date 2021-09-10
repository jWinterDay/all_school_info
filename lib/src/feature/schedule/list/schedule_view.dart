import 'package:all_school_info/src/generated/l10n.dart';
import 'package:all_school_info/src/routes/autoroutes.gr.dart' as gr;
import 'package:auto_route/auto_route.dart';
import 'package:design/design.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

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

  List<UiScheduleItem> _itemList(ScheduleState scheduleState) {
    return <UiScheduleItem>[
      // schedule
      UiScheduleItem(
        title: AllSchoolInfoIntl.of(context).scheduleViewTitle,
        icon: Icons.baby_changing_station,
        iconColor: context.design.palette.primary,
        showBadge: scheduleState.haveScheduleUpd,
        callback: () async {
          // showCupertinoModalBottomSheet<void>(context: context, builder: (context) => ScheduleDetailsView());
          await AutoRouter.of(context).push(const gr.ScheduleDetailsViewRoute());
        },
      ),

      // last notifications
      UiScheduleItem(
        title: AllSchoolInfoIntl.of(context).scheduleLastNotifications,
        icon: Icons.manage_accounts_outlined,
        iconColor: context.design.palette.accent,
        showBadge: scheduleState.haveLastNotificationsUpd,
        callback: () async {},
      ),

      // ratings
      UiScheduleItem(
        title: AllSchoolInfoIntl.of(context).scheduleRatings,
        icon: Icons.radio_button_unchecked_outlined,
        iconColor: context.design.palette.averageProgress,
        showBadge: scheduleState.haveRatingsUpd,
        callback: () async {},
      ),

      // news
      UiScheduleItem(
        title: AllSchoolInfoIntl.of(context).scheduleNews,
        icon: Icons.tag_faces,
        iconColor: context.design.palette.danger,
        showBadge: scheduleState.haveNewsUpd,
        callback: () async {},
      ),

      // homework
      UiScheduleItem(
        title: AllSchoolInfoIntl.of(context).scheduleHomework,
        icon: Icons.elderly,
        iconColor: context.design.palette.primaryDark,
        showBadge: scheduleState.haveHomeworkUpd,
        callback: () async {},
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, ScheduleState>(
      distinct: true,
      converter: (Store<AppState> store) => store.state.scheduleState,
      builder: (_, ScheduleState scheduleState) {
        return CustomScrollView(
          physics: const ClampingScrollPhysics(),
          slivers: <Widget>[
            // content
            SliverList(
              delegate: SliverChildListDelegate(
                _itemList(scheduleState).map((UiScheduleItem uiScheduleItem) {
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
      },
    );
  }
}
