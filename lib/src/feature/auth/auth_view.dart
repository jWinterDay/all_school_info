import 'dart:async';

import 'package:all_school_info/src/feature/announcement/default/default_announcement_view.dart';
import 'package:all_school_info/src/generated/l10n.dart';
import 'package:all_school_info/src/routes/autoroutes.gr.dart' as gr;
import 'package:auto_route/auto_route.dart';
// import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:design/design.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:overlay_support/overlay_support.dart';

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

  final TextEditingController _emailController = TextEditingController()..text = 'jwinterday@mail.ru';
  final TextEditingController _passwordController = TextEditingController()..text = 'SuperPassword';

  // dialog
  final TransientKey<String> _dialogKey = const TransientKey<String>('transient');
  final ValueKey<String> _key = const ValueKey<String>('overlay');
  OverlaySupportEntry? _entry;

  // stream
  StreamSubscription<bool>? _loggedInSub;
  StreamSubscription<Exception?>? _exceptionSub;

  String _exceptionStr(Exception? exc) {
    if (exc is AuthWrongPasswordException) {
      return AllSchoolInfoIntl.of(context).wrongPasswordExc;
    }

    if (exc is AuthUserNotFoundException) {
      return AllSchoolInfoIntl.of(context).userNotFoundExc;
    }

    if (exc is AuthInvalidEmailException) {
      return AllSchoolInfoIntl.of(context).invalidEmailExc;
    }

    if (exc is AuthUnknownException) {
      return AllSchoolInfoIntl.of(context).unknownException;
    }

    return 'Unknown error';
  }

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance?.addPostFrameCallback((_) {
      // logged in
      _loggedInSub = _bloc.loggedInStream.listen((bool loggedIn) {
        if (loggedIn) {
          AutoRouter.of(context).pop();
        }
      });

      // exception
      _exceptionSub = _bloc.exceptionStream.where((Exception? exception) {
        return exception != null;
      }).listen((Exception? exception) {
        _entry = showSimpleNotification(
          Text(_exceptionStr(exception)),
          key: _dialogKey,
          autoDismiss: false,
          slideDismissDirection: DismissDirection.horizontal,
          // trailing: Text('trailing'),
          // subtitle: Text('subtitle'),
          // leading: Text('leading'),
          position: NotificationPosition.bottom,
          background: context.design.palette.primary12,
          trailing: Builder(
            builder: (_) {
              return CupertinoButton(
                child: const Icon(Icons.close),
                onPressed: () {
                  _entry?.dismiss();
                },
              );
            },
          ),
        );
      });
    });
  }

  @override
  void deactivate() {
    super.deactivate();

    _entry?.dismiss();
  }

  @override
  void dispose() {
    _bloc.dispose();
    _loggedInSub?.cancel();
    _exceptionSub?.cancel();

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
                    obscureText: true,
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
