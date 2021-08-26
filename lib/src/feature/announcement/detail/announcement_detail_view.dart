import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:all_school_info/src/generated/l10n.dart';

class AnnouncementDetailView extends StatefulWidget {
  const AnnouncementDetailView({
    Key? key,
    @PathParam('id') required this.announcementModelId,
  }) : super(key: key);

  final String announcementModelId;

  @override
  _AnnouncementDetailViewState createState() => _AnnouncementDetailViewState();
}

class _AnnouncementDetailViewState extends State<AnnouncementDetailView> {
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
    return Scaffold(
      appBar: AppBar(
        title: Text(AllSchoolInfoIntl.of(context).announcementViewTitle),
      ),
      body: Text('announcement id: ${widget.announcementModelId}'),
    );
  }
}
