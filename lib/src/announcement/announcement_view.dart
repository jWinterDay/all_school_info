// ignore_for_file: always_use_package_imports
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class AnnouncementView extends StatefulWidget {
  const AnnouncementView({
    Key? key,
  }) : super(key: key);

  @override
  _AnnouncementViewState createState() => _AnnouncementViewState();
}

class _AnnouncementViewState extends State<AnnouncementView> {
  @override
  void initState() {
    AppDomainProvider.appStore.dispatch(
      const AnnouncementAction.fetchAnnouncements(),
    );

    super.initState();
  }

  @override
  void dispose() {
    AppDomainProvider.appStore.dispatch(
      const AnnouncementAction.cleanUp(),
    );

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AnnouncementState>(
      converter: (Store<AppState> store) => store.state.announcementState,
      builder: (_, AnnouncementState announcementState) {
        return Text(
          'announcementState: $announcementState',
        );
      },
    );
  }
}
