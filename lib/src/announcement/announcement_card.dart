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
          constraints: const BoxConstraints(minHeight: kMinHeight),
          decoration: BoxDecoration(
            color: Colors.blue[200],
            borderRadius: const BorderRadius.all(Radius.circular(8)),
          ),
          child: Text('${announcementModel.title}\n${announcementModel.content}'),
        ),
      ),
    );
  }
}
