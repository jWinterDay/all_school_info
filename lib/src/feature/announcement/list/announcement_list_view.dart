import 'package:all_school_info/src/generated/l10n.dart';
import 'package:all_school_info/src/routes/autoroutes.gr.dart' as gr;
import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:design/design.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:utils/utils.dart';

import 'announcement_list_bloc.dart';
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

    _bloc.refresh();
  }

  @override
  void dispose() {
    _bloc.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AnnouncementState>(
      converter: (Store<AppState> store) => store.state.announcementState,
      builder: (_, AnnouncementState announcementState) {
        return Column(
          children: <Widget>[
            // top events
            if (announcementState.topAnnouncements.isNotEmpty)
              CarouselSlider(
                options: CarouselOptions(
                  height: 100,
                  autoPlay: true,
                ),
                items: announcementState.topAnnouncements.map((AnnouncementModel topAnnouncement) {
                  // return AnnouncementCard(announcementModel: topAnnouncement);
                  return GestureDetector(
                    onTap: () {
                      AutoRouter.of(context).push(gr.AnnouncementDetailViewRoute(
                        announcementModelId: topAnnouncement.id,
                      ));
                    },
                    child: Container(
                      width: context.width,
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(color: context.palette.primaryLight),
                      child: Text(
                        topAnnouncement.title ?? '',
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ),
                  );
                }).toList(),
              ),

            // scroll content
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 4),
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

                        if (announcementState.errorModel != null)
                          SliverToBoxAdapter(
                            child: Text(
                              'Error: ${announcementState.errorModel!.code} >> ${announcementState.errorModel!.message}',
                            ),
                          )
                        else if (announcementState.loading && announcementState.isFirstLoading)
                          const SliverToBoxAdapter(
                            child: Text('-------first loading'),
                          )
                        // after first loaded data list is not null
                        else if (announcementState.announcements.isEmpty)
                          SliverToBoxAdapter(
                            child: Text(AllSchoolInfoIntl.of(context).noAnnouncement),
                          )
                        else //if (announcementState.announcementList != null)
                          SliverList(
                            delegate: SliverChildListDelegate(
                              announcementState.announcements.map((AnnouncementModel e) {
                                return AnnouncementCard(announcementModel: e);
                              }).toList(),
                            ),
                          ),
                        // else
                        //   const SliverToBoxAdapter(child: SizedBox()),

                        // padding
                        const SliverPadding(padding: EdgeInsets.only(bottom: 120))
                      ],
                    ),

                    // loading
                    if (announcementState.loading)
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
