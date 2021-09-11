import 'package:all_school_info/src/feature/announcement/default/default_announcement_view.dart';
import 'package:all_school_info/src/generated/l10n.dart';
// import 'package:all_school_info/src/routes/autoroutes.gr.dart' as gr;
// import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:design/design.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
// import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'auth_bloc.dart';

class AuthView extends StatefulWidget {
  const AuthView({
    Key? key,
  }) : super(key: key);

  @override
  _AuthViewState createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  final AuthBloc _bloc = AuthBloc();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();

    // _emailController.text = _bloc.title;
    _emailController.addListener(() {
      // _bloc.title = _titleController.text;
      // _bloc.saveDraftContent();
    });

    // _passwordController.text = _bloc.content;
    _passwordController.addListener(() {
      // _bloc.content = _contentController.text;
      // _bloc.saveDraftContent();
    });
  }

  @override
  void dispose() {
    _bloc.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AllSchoolInfoIntl.of(context).authTitle),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          // content
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: CustomScrollView(
              physics: const ClampingScrollPhysics(),
              slivers: <Widget>[
                // email
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 4),
                    child: Text(AllSchoolInfoIntl.of(context).email),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 4, right: 4, bottom: 8),
                    child: CupertinoTextField(
                      controller: _emailController,
                      autofocus: true,
                      clearButtonMode: OverlayVisibilityMode.editing,
                      // maxLength: uiAnnouncementEditInfo.announcementMaxTitleLength,
                    ),
                  ),
                ),

                // password
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 4),
                    child: Text(AllSchoolInfoIntl.of(context).password),
                  ),
                ),
                SliverToBoxAdapter(
                  child: CupertinoTextField(
                    controller: _passwordController,
                    clearButtonMode: OverlayVisibilityMode.editing,
                    // maxLines: 10,
                    // maxLength: uiAnnouncementEditInfo.announcementMaxContentLength,
                  ),
                ),

                // button
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 32),
                    child: ElevatedButton(
                      child: Text(AllSchoolInfoIntl.of(context).signIn),
                      onPressed: () {
                        _bloc.signin(
                          email: _emailController.text,
                          password: _passwordController.text,
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),

          // loading
          StoreConnector<AppState, bool>(
            distinct: true,
            converter: (Store<AppState> store) => store.state.userState.loading,
            builder: (_, bool loading) {
              if (loading) {
                return SizedBox(
                  width: context.width,
                  height: context.height,
                  child: const CupertinoActivityIndicator(
                    radius: 42,
                  ),
                );
              }

              return const SizedBox();
            },
          ),
        ],
      ),
    );
  }
}
