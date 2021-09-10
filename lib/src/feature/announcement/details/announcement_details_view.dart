import 'package:all_school_info/src/generated/l10n.dart';
import 'package:auto_route/annotations.dart';
import 'package:design/design.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'announcement_details_bloc.dart';

final DateFormat _kDateFormat = DateFormat('dd.MM.yyyy HH:mm:ss');

class AnnouncementDetailsView extends StatefulWidget {
  const AnnouncementDetailsView({
    Key? key,
    @PathParam('id') required this.announcementModelId,
  }) : super(key: key);

  final String announcementModelId;

  @override
  _AnnouncementDetailsViewState createState() => _AnnouncementDetailsViewState();
}

class _AnnouncementDetailsViewState extends State<AnnouncementDetailsView> {
  final AnnouncementDetailsBloc _bloc = AnnouncementDetailsBloc();

  AnnouncementModel? _announcementModel;

  @override
  void initState() {
    super.initState();

    _announcementModel = _bloc.findAnnouncementById(widget.announcementModelId);

    if (_announcementModel != null) {
      _bloc.markAsRead(_announcementModel!.id);
    }
  }

  @override
  void dispose() {
    _bloc.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AllSchoolInfoIntl.of(context).announcementViewTitle),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          // title
          Padding(
            padding: const EdgeInsets.all(8),
            child: ColoredBox(
              color: context.palette.gray12,
              child: Text(
                _announcementModel?.title ?? AllSchoolInfoIntl.of(context).unknownAnnouncementTitle,
                style: Theme.of(context).textTheme.subtitle2,
                textAlign: TextAlign.center,
              ),
            ),
          ),

          // datetime
          if (_announcementModel?.dateUnixMs != null)
            Padding(
              padding: const EdgeInsets.all(8),
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Text(
                  'date: ${_kDateFormat.format(DateTime.fromMillisecondsSinceEpoch(_announcementModel!.dateUnixMs!))}',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
            ),

          // read
          if (_announcementModel != null)
            Padding(
              padding: const EdgeInsets.all(8),
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Text(
                  _announcementModel!.isUnread ? 'Unread' : 'Read',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
            ),

          // groups
          if (_announcementModel != null)
            Padding(
              padding: const EdgeInsets.all(8),
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Text(
                  'groups: ${_announcementModel!.userGroups}',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
            ),

          // content
          if (_announcementModel != null)
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: ColoredBox(
                    color: context.design.palette.gray22,
                    child: Text(
                      _announcementModel!.content ?? AllSchoolInfoIntl.of(context).unknownAnnouncementContent,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
