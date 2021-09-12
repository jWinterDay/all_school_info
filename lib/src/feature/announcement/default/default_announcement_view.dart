// import 'package:all_school_info/src/routes/autoroutes.gr.dart' as gr;
// import 'package:auto_route/auto_route.dart';
import 'package:all_school_info/src/ui_utils/ui_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:design/design.dart';
import 'package:all_school_info/src/generated/l10n.dart';

class DefaultAnnouncementView extends StatefulWidget {
  const DefaultAnnouncementView({
    Key? key,
  }) : super(key: key);

  @override
  _DefaultAnnouncementViewState createState() => _DefaultAnnouncementViewState();
}

class _DefaultAnnouncementViewState extends State<DefaultAnnouncementView> {
  // final AnnouncementListBloc _bloc = AnnouncementListBloc();

  @override
  void initState() {
    super.initState();

    // _bloc.refresh();
  }

  @override
  void dispose() {
    // _bloc.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: UiUtils.homeBgDecoration(context),
        child: Center(
          child: Text(
            AllSchoolInfoIntl.of(context).youAreNotLoggedIn,
            textAlign: TextAlign.center,
            // style: TextStyle(
            //   fontSize: 48,
            //   fontWeight: FontWeight.bold,
            //   color: Colors.white,
            // ),
          ),
        ),
      ),
    );
    // return const Center(
    //   child: Text('default'),
    // );
  }
}
