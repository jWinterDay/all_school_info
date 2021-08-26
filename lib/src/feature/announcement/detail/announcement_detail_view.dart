import 'package:auto_route/annotations.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:all_school_info/src/generated/l10n.dart';
import 'package:design/design.dart';

import 'announcement_detail_bloc.dart';

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
  final AnnouncementDetailBloc _bloc = AnnouncementDetailBloc();

  AnnouncementModel? _announcementModel;

  @override
  void initState() {
    super.initState();

    _announcementModel = _bloc.findAnnouncementById(widget.announcementModelId);
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
                  child: Text(
                    _announcementModel?.content ?? AllSchoolInfoIntl.of(context).unknownAnnouncementContent,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
