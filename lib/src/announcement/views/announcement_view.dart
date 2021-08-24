// ignore_for_file: always_use_package_imports
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

// app domain
// import 'package:app_domain/domain/store_provider.dart'; // uncomment it for using redux store provider
// import 'package:utilities/context_extention.dart'; // uncomment it for using context tools
// import 'package:package_name/package_name.dart'; // uncomment it for using package specific

import '../bloc/announcement_bloc.dart';

class AnnouncementView extends StatelessWidget {
  const AnnouncementView({
    Key? key,
    this.testMode = false,
  }) : super(key: key);

  final bool testMode;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnnouncementBloc, AnnouncementState>(
      buildWhen: (AnnouncementState prev, AnnouncementState cur) {
        return prev.loading != cur.loading; // an example
      },
      builder: (_, AnnouncementState announcementState) {
        return _Example(loading: announcementState.loading);
      },
    );
  }
}

class _Example extends StatelessWidget {
  const _Example({
    required this.loading,
  });

  final bool loading;

  @override
  Widget build(BuildContext context) {
    final AnnouncementBloc bloc = context.read<AnnouncementBloc>();

    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            bloc.add(AnnouncementAction.changeLoading(value: !loading));
          },
          child: Text(
            'Example widget loading: $loading',
            // style: TextStyle(
            //   color:  context.colors.white,
            // ),
          ),
        ),
      ),
    );
  }
}
