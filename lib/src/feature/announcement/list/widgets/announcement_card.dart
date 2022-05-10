import 'package:all_school_info/src/generated/l10n.dart';
import 'package:all_school_info/src/routes/autoroutes.gr.dart' as gr;
import 'package:all_school_info/src/ui_utils/ui_utils.dart';
import 'package:auto_route/auto_route.dart';
import 'package:design/design.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

const double kMinHeight = 80;
final DateFormat _kDateFormat = DateFormat('dd.MM.yyyy HH:mm:ss');

class AnnouncementCard extends StatelessWidget {
  const AnnouncementCard({
    Key? key,
    required this.announcementModel,
    this.topCard = false,
  }) : super(key: key);

  final AnnouncementModel announcementModel;
  final bool topCard;

  static String dateUnixMsToStr(int unixMs) {
    final DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(unixMs);

    return _kDateFormat.format(dateTime);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: GestureDetector(
        onTap: () {
          AutoRouter.of(context).push(
            gr.AnnouncementDetailsViewRoute(
              announcementModelId: announcementModel.id,
            ),
          );
        },
        child: Container(
          constraints: const BoxConstraints(minHeight: kMinHeight, maxHeight: 200),
          decoration: UiUtils.announcementCardBgDecoration(context),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              // title
              Row(
                children: <Widget>[
                  // unread
                  if (announcementModel.isUnread)
                    Icon(
                      Icons.mark_as_unread,
                      color: context.design.palette.danger,
                    ),
                  // Container(
                  //   width: 30,
                  //   color: context.design.palette.accent,
                  //   height: 30,
                  // ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Text(
                        announcementModel.title ?? AllSchoolInfoIntl.of(context).unknownAnnouncementTitle,
                        style: Theme.of(context).textTheme.caption?.copyWith(
                              color: context.design.palette.black,
                            ),
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        maxLines: 1,
                      ),
                    ),
                  ),
                ],
              ),

              if (announcementModel.dateUnixMs != null)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    dateUnixMsToStr(announcementModel.dateUnixMs!),
                    style: Theme.of(context).textTheme.caption?.copyWith(
                          fontSize: 13,
                        ),
                  ),
                ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  announcementModel.id,
                  style: Theme.of(context).textTheme.caption?.copyWith(
                        fontSize: 12,
                      ),
                ),
              ),

              Divider(
                height: 1,
                color: context.palette.gray40,
              ),

              // content
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: SizedBox(
                  child: Text(
                    'fd1', //announcementModel.content ?? AllSchoolInfoIntl.of(context).unknownAnnouncementContent,
                    style: Theme.of(context).textTheme.bodyText2,
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
