// ignore_for_file: always_use_package_imports
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/announcement_bloc.dart';
import 'views/announcement_view.dart';

class Announcement extends StatelessWidget {
  const Announcement({
    Key? key,
    this.testMode = false,
  }) : super(key: key);

  final bool testMode;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AnnouncementBloc>(
      create: (_) => AnnouncementBloc(
        testMode: testMode,
      )..add(const AnnouncementAction.start()),
      child: AnnouncementView(
        testMode: testMode,
      ),
    );
  }
}
