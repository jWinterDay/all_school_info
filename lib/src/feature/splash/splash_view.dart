import 'dart:math';

import 'package:design/design.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  // final ProfileBloc _bloc = ProfileBloc();

  @override
  void initState() {
    super.initState();

    // Future<void>.delayed(Duration(seconds: 1)).then((_) {
    //   AutoRouter.of(context).pushAndPopUntil(
    //     gr.HomeViewRoute(),
    //     predicate: (_) => true,
    //   );
    // });
  }

  @override
  void dispose() {
    // _bloc.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('w = ${context.width} h = ${context.height} max = ${max(context.width, context.height)}');

    return Image.asset('assets/splash/splash.png');

    // return AnimatedSplashScreen.withScreenFunction(
    //   splash: 'assets/splash/splash.png',
    //   splashIconSize: 1000, // max(context.width, context.height) * context.mediaQuery.devicePixelRatio,
    //   disableNavigation: true,

    //   screenFunction: () async {
    //     // Future<void>.delayed(Duration(seconds: 1)).then((_) {
    //     //   AutoRouter.of(context).pushAndPopUntil(
    //     //     gr.HomeViewRoute(),
    //     //     predicate: (_) => true,
    //     //   );
    //     // });
    //     // AutoRouter.of(context).pushAndPopUntil(
    //     //   gr.HomeViewRoute(),
    //     //   predicate: (_) => true,
    //     // );
    //     // print('---screenFunction');
    //     // final MaterialPageRoute<void> t = MaterialPageRoute<void>(
    //     //   builder: (BuildContext context) => ProfileView(),
    //     // );

    //     return Future<Widget>.value(HomeView());
    //   },

    //   // nextScreen: Container(), // HomeView(),
    //   splashTransition: SplashTransition.rotationTransition,
    //   pageTransitionType: PageTransitionType.scale,
    // );
    // return Column(
    //   children: <Widget>[
    //     // title
    //     Padding(
    //       padding: const EdgeInsets.all(8),
    //       child: Center(
    //         child: Text(
    //           AllSchoolInfoIntl.of(context).profileViewTitle,
    //         ),
    //       ),
    //     ),

    //     // scroll content
    //     StoreConnector<AppState, UserState>(
    //       distinct: true,
    //       converter: (Store<AppState> store) => store.state.userState,
    //       builder: (_, UserState userState) {
    //         return Expanded(
    //           child: Padding(
    //             padding: const EdgeInsets.only(top: 4),
    //             child: Stack(
    //               children: <Widget>[
    //                 // content
    //                 CustomScrollView(
    //                   slivers: <Widget>[
    //                     // refresh
    //                     CupertinoSliverRefreshControl(
    //                       onRefresh: () async {
    //                         _bloc.refresh();
    //                       },
    //                     ),

    //                     SliverList(
    //                       delegate: SliverChildListDelegate(
    //                         _itemList(userState).map((UiProfileItem uiProfileItem) {
    //                           return Padding(
    //                             padding: const EdgeInsets.only(bottom: 2),
    //                             child: ProfileItem(
    //                               uiProfileItem: uiProfileItem,
    //                             ),
    //                           );
    //                         }).toList(),
    //                       ),
    //                     ),

    //                     // padding
    //                     const SliverPadding(padding: EdgeInsets.only(bottom: 120)),
    //                   ],
    //                 ),

    //                 // loading
    //                 if (userState.loading)
    //                   const Center(
    //                     child: CupertinoActivityIndicator(
    //                       radius: 42,
    //                     ),
    //                   ),
    //               ],
    //             ),
    //           ),
    //         );
    //       },
    //     ),
    //   ],
    // );
  }
}
