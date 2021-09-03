import 'package:all_school_info/src/models/card_view_mode.dart';
import 'package:auto_route/annotations.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:all_school_info/src/generated/l10n.dart';
import 'package:design/design.dart';

import 'announcement_edit_bloc.dart';

/// add, edit, delete card
class AnnouncementEditView extends StatefulWidget {
  const AnnouncementEditView({
    Key? key,
    @PathParam('id') this.announcementModelId,
    @PathParam('mode') required this.cardViewMode,
  }) : super(key: key);

  final String? announcementModelId;

  final String cardViewMode;

  @override
  _AnnouncementEditViewState createState() => _AnnouncementEditViewState();
}

class _AnnouncementEditViewState extends State<AnnouncementEditView> {
  final AnnouncementEditBloc _bloc = AnnouncementEditBloc();

  late CardViewMode _cardViewMode;
  AnnouncementModel? _announcementModel;

  @override
  void initState() {
    super.initState();

    _cardViewMode = cardModeByStr(widget.cardViewMode);
    // _announcementModel = _bloc.findAnnouncementById(widget.announcementModelId);
  }

  @override
  void dispose() {
    _bloc.dispose();

    super.dispose();
  }

  String get _title {
    switch (_cardViewMode) {
      case CardViewMode.add:
        return AllSchoolInfoIntl.of(context).addAnnouncement;

      case CardViewMode.modify:
        return AllSchoolInfoIntl.of(context).modifyAnnouncement;

      case CardViewMode.remove:
        return AllSchoolInfoIntl.of(context).removeAnnouncement;

      default:
        return AllSchoolInfoIntl.of(context).announcementViewTitle;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        centerTitle: true,
      ),
      body: Text('mode = ${widget.cardViewMode} enum = $_cardViewMode'),
      // body: Column(
      //   children: <Widget>[
      //     // title
      //     Padding(
      //       padding: const EdgeInsets.all(8),
      //       child: ColoredBox(
      //         color: context.palette.gray12,
      //         child: Text(
      //           _announcementModel?.title ?? AllSchoolInfoIntl.of(context).unknownAnnouncementTitle,
      //           style: Theme.of(context).textTheme.subtitle2,
      //           textAlign: TextAlign.center,
      //         ),
      //       ),
      //     ),

      //     // content
      //     if (_announcementModel != null)
      //       Expanded(
      //         child: Padding(
      //           padding: const EdgeInsets.all(8),
      //           child: SingleChildScrollView(
      //             physics: const AlwaysScrollableScrollPhysics(),
      //             child: Text(
      //               _announcementModel?.content ?? AllSchoolInfoIntl.of(context).unknownAnnouncementContent,
      //               style: Theme.of(context).textTheme.bodyText2,
      //             ),
      //           ),
      //         ),
      //       ),
      //   ],
      // ),
    );
  }
}
