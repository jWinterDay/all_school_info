import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          print('tap');
        },
        child: Container(
          constraints: const BoxConstraints(minHeight: kMinHeight, maxHeight: 200),
          decoration: BoxDecoration(
            color: Colors.blue[200],
            borderRadius: const BorderRadius.all(Radius.circular(8)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Container(
                  color: Colors.green,
                  child: Text(
                    announcementModel.title ?? '--',
                    overflow: TextOverflow.fade, // ellipsis,
                    // softWrap: false,
                    maxLines: 1,
                  ),
                ),
              ),
              const Divider(
                height: 1,
                color: Colors.red,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: SizedBox(
                  child: Text(
                    announcementModel.content ?? '--',
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
