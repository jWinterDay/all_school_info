import 'package:all_school_info/src/generated/l10n.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:design/design.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

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
    return Column(
      children: <Widget>[
        // top events
        CarouselSlider(
          options: CarouselOptions(
            height: 100,
            autoPlay: true,
          ),
          items: <int>[1, 2, 3, 4, 5].map((int i) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(color: context.palette.primaryLight),
              child: Text(
                'text $i',
              ),
            );
          }).toList(),
        ),

        // scroll content
        StoreConnector<AppState, AnnouncementState>(
          converter: (Store<AppState> store) => store.state.announcementState,
          builder: (_, AnnouncementState announcementState) {
            return Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: CustomScrollView(
                  slivers: <Widget>[
                    // refresh
                    CupertinoSliverRefreshControl(
                      onRefresh: () async {
                        _bloc.refresh();
                      },
                    ),

                    // content
                    if (announcementState.loading)
                      const SliverFillRemaining(
                        child: Center(
                          child: CupertinoActivityIndicator(),
                        ),
                      )
                    else if (announcementState.announcementList == null)
                      SliverToBoxAdapter(
                        child: Text(AllSchoolInfoIntl.of(context).noAnnouncement),
                      )
                    else
                      // TODO SliverFixedExtentList
                      SliverList(
                        delegate: SliverChildListDelegate(
                          announcementState.announcementList!.map((AnnouncementModel e) {
                            return AnnouncementCard(announcementModel: e);
                          }).toList(),
                        ),
                      ),

                    // padding
                    const SliverPadding(padding: EdgeInsets.only(bottom: 120))
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
