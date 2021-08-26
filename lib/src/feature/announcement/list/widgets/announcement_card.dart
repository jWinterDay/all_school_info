import 'package:all_school_info/src/routes/autoroutes.gr.dart' as gr;
import 'package:all_school_info/src/generated/l10n.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:domain/domain.dart';
import 'package:design/design.dart';

const double kMinHeight = 80;

class AnnouncementCard extends StatelessWidget {
  const AnnouncementCard({
    Key? key,
    required this.announcementModel,
  }) : super(key: key);

  final AnnouncementModel announcementModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: GestureDetector(
        onTap: () {
          AutoRouter.of(context).push(gr.AnnouncementDetailViewRoute(
            announcementModelId: announcementModel.id,
          ));
        },
        child: Container(
          constraints: const BoxConstraints(minHeight: kMinHeight, maxHeight: 200),
          decoration: BoxDecoration(
            color: context.palette.background,
            borderRadius: const BorderRadius.all(Radius.circular(8)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Container(
                  color: context.palette.primary,
                  child: Text(
                    announcementModel.title ?? AllSchoolInfoIntl.of(context).unknownAnnouncementTitle,
                    overflow: TextOverflow.ellipsis,
                    // softWrap: false,
                    maxLines: 1,
                  ),
                ),
              ),
              Divider(
                height: 1,
                color: context.palette.gray22,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: SizedBox(
                  child: Text(
                    announcementModel.content ?? AllSchoolInfoIntl.of(context).unknownAnnouncementContent,
                    overflow: TextOverflow.fade,
                    maxLines: 3,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
