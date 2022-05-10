import 'package:all_school_info/src/feature/schedule/details/widgets/lesson_item.dart';
import 'package:all_school_info/src/generated/l10n.dart';
import 'package:auto_route/auto_route.dart';
import 'package:design/design.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:all_school_info/src/routes/autoroutes.gr.dart' as gr;
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import 'schedule_details_bloc.dart';

class ScheduleDetailsView extends StatefulWidget {
  const ScheduleDetailsView({Key? key}) : super(key: key);

  @override
  _ScheduleDetailsViewState createState() => _ScheduleDetailsViewState();
}

class _ScheduleDetailsViewState extends State<ScheduleDetailsView> {
  final ScheduleDetailsBloc _bloc = ScheduleDetailsBloc();

  @override
  void initState() {
    super.initState();

    _bloc.refresh();
  }

  @override
  void dispose() {
    _bloc.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(AllSchoolInfoIntl.of(context).scheduleViewTitle),
        backgroundColor: context.design.palette.primary,
      ),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.date_range),
          onPressed: _showDatePicker,
        ),
        // appBar: AppBar(
        //   title: Text(AllSchoolInfoIntl.of(context).scheduleViewTitle),
        //   centerTitle: true,
        // ),
        body: StoreConnector<AppState, ScheduleState>(
          distinct: true,
          converter: (Store<AppState> store) => store.state.scheduleState,
          builder: (_, ScheduleState scheduleState) {
            return Padding(
              padding: const EdgeInsets.only(top: 4, left: 4, right: 4),
              child: Stack(
                children: <Widget>[
                  // content
                  CustomScrollView(
                    physics: const ClampingScrollPhysics(),
                    slivers: <Widget>[
                      SliverPersistentHeader(
                        pinned: true,
                        floating: true,
                        delegate: _Delegate(title: _bloc.dateTimeAsStr),
                      ),

                      // refresh
                      CupertinoSliverRefreshControl(
                        onRefresh: () async {
                          _bloc.refresh();
                        },
                      ),

                      // content
                      if (scheduleState.firstLoading)
                        SliverFillRemaining(
                          child: Center(
                            child: Text(AllSchoolInfoIntl.of(context).noContentYet),
                          ),
                        )
                      else if (scheduleState.lessonList.isEmpty)
                        SliverFillRemaining(
                          child: Center(
                            child: Text(AllSchoolInfoIntl.of(context).emptySchedule),
                          ),
                        )
                      else
                        SliverList(
                          delegate: SliverChildListDelegate(
                            scheduleState.lessonList.map(
                              (LessonModel lessonModel) {
                                return LessonItem(lessonModel: lessonModel);
                              },
                            ).toList(),
                          ),
                        ),

                      // padding
                      const SliverPadding(padding: EdgeInsets.only(bottom: 120))
                    ],
                  ),

                  // loading
                  if (scheduleState.loading)
                    SizedBox(
                      width: context.width,
                      height: context.height,
                      child: const CupertinoActivityIndicator(
                        radius: 42,
                      ),
                    ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Future<void> _showDatePicker() async {
    final DateTime currentDate = DateTime.now();

    await showModalBottomSheet<void>(
      context: context,
      routeSettings: const RouteSettings(name: 'schedule_date_picker'),
      builder: (_) {
        return Column(
          children: <Widget>[
            SizedBox(
              height: 24,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  CloseButton(
                    onPressed: AutoRouter.of(context).pop,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: context.height / 2,
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.date,
                maximumDate: currentDate.add(const Duration(days: 14)),
                minimumDate: currentDate.subtract(const Duration(days: 14)),
                onDateTimeChanged: _bloc.setDate,
                initialDateTime: currentDate,
              ),
            ),
          ],
        );
      },
    );

    _bloc.refresh();
  }
}

class _Delegate extends SliverPersistentHeaderDelegate {
  _Delegate({required this.title});

  final String title;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return ColoredBox(
      color: context.design.palette.gray12,
      child: Center(
        child: Text(
          title,
        ),
      ),
    );
  }

  @override
  double get maxExtent => 40;

  @override
  double get minExtent => 32;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
