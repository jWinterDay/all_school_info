import 'package:all_school_info/src/generated/l10n.dart';
// import 'package:all_school_info/src/routes/autoroutes.gr.dart' as gr;
// import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:design/design.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import 'announcement_list_bloc.dart';
import 'models/ui_announcement_info.dart';
import 'widgets/announcement_card.dart';

class AnnouncementListView extends StatefulWidget {
  const AnnouncementListView({
    Key? key,
  }) : super(key: key);

  @override
  _AnnouncementListViewState createState() => _AnnouncementListViewState();
}

class _AnnouncementListViewState extends State<AnnouncementListView> {
  final AnnouncementListBloc _bloc = AnnouncementListBloc();

  @override
  void initState() {
    super.initState();

    // _bloc.refresh();
  }

  @override
  void dispose() {
    _bloc.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, UiAnnouncementInfo>(
      distinct: true,
      converter: (Store<AppState> store) {
        return UiAnnouncementInfo(
          announcementState: store.state.announcementState,
          topAnnouncementCount: store.state.commonState.topAnnouncementCount,
        );
      },
      builder: (_, UiAnnouncementInfo uiAnnouncementInfo) {
        final int unreadLen = uiAnnouncementInfo.unreadAnnouncementList.length;

        return Column(
          children: <Widget>[
            // top events
            if (uiAnnouncementInfo.announcementState.topList.isNotEmpty)
              CarouselSlider(
                options: CarouselOptions(
                  height: 120,
                  autoPlay: true,
                ),
                items: uiAnnouncementInfo.topAnnouncementList.map(
                  (AnnouncementModel topAnnouncement) {
                    return AnnouncementCard(
                      announcementModel: topAnnouncement,
                      topCard: true,
                    );
                  },
                ).toList(),
              ),

            // there are new messages button
            if (uiAnnouncementInfo.unreadAnnouncementList.isNotEmpty)
              GestureDetector(
                onTap: _bloc.clearUnreadAnnouncements,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: ColoredBox(
                    color: context.design.palette.gray12,
                    child: Text(
                      AllSchoolInfoIntl.of(context).unreadAnnouncements(unreadLen),
                    ),
                  ),
                ),
              ),

            // scroll content
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 4, left: 4, right: 4),
                child: Stack(
                  children: <Widget>[
                    // content
                    CustomScrollView(
                      slivers: <Widget>[
                        // refresh
                        CupertinoSliverRefreshControl(
                          onRefresh: () async {
                            _bloc.refresh();
                          },
                        ),

                        if (uiAnnouncementInfo.announcementState.errorModel != null)
                          SliverToBoxAdapter(
                            child: Text(
                              'Error: ${uiAnnouncementInfo.errorMessage}',
                            ),
                          )
                        // else if (uiAnnouncementInfo.announcementState.firstLoading)
                        //   SliverFillRemaining(
                        //     child: Center(
                        //       child: Text(AllSchoolInfoIntl.of(context).noContentYet),
                        //     ),
                        //   )
                        else if (uiAnnouncementInfo.announcementState.list.isEmpty)
                          SliverFillRemaining(
                            child: Center(
                              child: Text(AllSchoolInfoIntl.of(context).noAnnouncement),
                            ),
                          )
                        else
                          SliverList(
                            delegate: SliverChildListDelegate(
                              uiAnnouncementInfo.announcementState.list.map((AnnouncementModel e) {
                                return AnnouncementCard(announcementModel: e);
                              }).toList(),
                            ),
                          ),

                        // padding
                        const SliverPadding(padding: EdgeInsets.only(bottom: 120))
                      ],
                    ),

                    // loading
                    if ( //uiAnnouncementInfo.announcementState.firstLoading ||
                    uiAnnouncementInfo.announcementState.loading)
                      SizedBox(
                        width: context.width,
                        height: context.height,
                        child: const CupertinoActivityIndicator(
                          radius: 42,
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
