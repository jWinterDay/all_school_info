import 'package:auto_route/auto_route.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:all_school_info/src/generated/l10n.dart';
import 'package:design/design.dart';
import 'package:all_school_info/src/routes/autoroutes.gr.dart' as gr;
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import 'schedule_details_bloc.dart';

class ScheduleDetailsView extends StatefulWidget {
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
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.date_range),
        onPressed: () async {
          await _showDatePicker();
        },
      ),
      appBar: AppBar(
        title: Text(AllSchoolInfoIntl.of(context).scheduleViewTitle),
        // actions: <Widget>[
        //   IconButton(
        //     icon: const Icon(Icons.date_range),
        //     tooltip: 'Open date picker',
        //     onPressed: _showDatePicker,
        //   ),
        // ],
      ),
      body: StoreConnector<AppState, ScheduleState>(
        converter: (Store<AppState> store) => store.state.scheduleState,
        builder: (_, ScheduleState scheduleState) {
          return Text('schedule details view : ${scheduleState.loading}');
        },
      ),

      //  const Text('schedule details view'),
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
                    onPressed: () {
                      AutoRouter.of(context).pop();
                    },
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
