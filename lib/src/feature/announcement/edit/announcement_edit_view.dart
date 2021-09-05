import 'package:all_school_info/src/models/card_view_mode.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:all_school_info/src/generated/l10n.dart';
import 'package:design/design.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import 'announcement_edit_bloc.dart';
import 'models/ui_announcement_edit_info.dart';
import 'widgets/access_group.dart';

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
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();

  @override
  void initState() {
    super.initState();

    _cardViewMode = cardModeByStr(widget.cardViewMode);

    //
    _titleController.text = _bloc.title;
    _titleController.addListener(() {
      _bloc.title = _titleController.text;
    });

    _contentController.text = _bloc.content;
    _contentController.addListener(() {
      _bloc.content = _contentController.text;
    });
  }

  @override
  void dispose() {
    _bloc.dispose();

    super.dispose();
  }

  String get _appBarTitle {
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

  Future<bool> _onClose() async {
    if (_bloc.thereAreChanges) {
      final bool? result = await showDialog<bool>(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text(AllSchoolInfoIntl.of(context).saveFields),
            // content: Text(AllSchoolInfoIntl.of(context).saveFields),
            actions: <Widget>[
              TextButton(
                child: Text(AllSchoolInfoIntl.of(context).yes),
                onPressed: () => Navigator.of(context).pop(true),
              ),
              TextButton(
                child: Text(AllSchoolInfoIntl.of(context).no),
                onPressed: () => Navigator.of(context).pop(false),
              ),
            ],
          );
        },
      );

      if (result == true) {
        _bloc.saveDraft();
      }
    }

    return true;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onClose,
      child: Scaffold(
        appBar: AppBar(
          title: Text(_appBarTitle),
          centerTitle: true,
        ),
        body: StoreConnector<AppState, UiAnnouncementEditInfo>(
          distinct: true,
          converter: (Store<AppState> store) {
            return UiAnnouncementEditInfo(
              announcementMaxTitleLength: store.state.commonState.announcementMaxTitleLength,
              announcementMaxContentLength: store.state.commonState.announcementMaxContentLength,
              availableAccessGroups: store.state.userState.availableAccessGroups,

              //
              draftGroups: store.state.announcementState.draftNewGroups,
            );
          },
          builder: (_, UiAnnouncementEditInfo uiAnnouncementEditInfo) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: CustomScrollView(
                slivers: <Widget>[
                  // title
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8, bottom: 4),
                      child: Text(AllSchoolInfoIntl.of(context).announcementEditTitle),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4, right: 4, bottom: 8),
                      child: CupertinoTextField(
                        controller: _titleController,
                        autofocus: true,
                        clearButtonMode: OverlayVisibilityMode.editing,
                        maxLength: uiAnnouncementEditInfo.announcementMaxTitleLength,
                      ),
                    ),
                  ),

                  // content
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8, bottom: 4),
                      child: Text(AllSchoolInfoIntl.of(context).announcementEditContent),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: CupertinoTextField(
                      controller: _contentController,
                      clearButtonMode: OverlayVisibilityMode.editing,
                      maxLines: 10,
                      maxLength: uiAnnouncementEditInfo.announcementMaxContentLength,
                    ),
                  ),

                  // publish button
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: InkWell(
                        onTap: _bloc.publishAnnouncement,
                        child: ColoredBox(
                          color: context.design.palette.accent,
                          child: SizedBox(
                            height: 40,
                            child: Center(
                              child: Text(
                                AllSchoolInfoIntl.of(context).publishAnnouncement,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  // available access groups
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(AllSchoolInfoIntl.of(context).announcementEditGroups),
                    ),
                  ),

                  SliverList(
                    delegate: SliverChildListDelegate(
                      uiAnnouncementEditInfo.availableAccessGroups.map((String accessGroup) {
                        return GestureDetector(
                          onTap: () {
                            _bloc.draftToggleCheck(accessGroup);
                            setState(() {});
                          },
                          child: AccessGroup(
                            accessGroup: accessGroup,
                            checked: uiAnnouncementEditInfo.draftGroups.contains(accessGroup),
                          ),
                        );
                      }).toList(),
                    ),
                  ),

                  // padding
                  const SliverPadding(padding: EdgeInsets.only(bottom: 120))
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
