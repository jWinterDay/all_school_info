// import 'package:flutter/material.dart';

// // class BottomSheetRoute extends StatefulWidget {
// //   @override
// //   _BottomSheetRouteState createState() => _BottomSheetRouteState();
// // }

// // class _BottomSheetRouteState extends State<BottomSheetRoute> with TickerProviderStateMixin {
// //   late AnimationController controller;

// //   @override
// //   initState() {
// //     super.initState();
// //     controller = BottomSheet.createAnimationController(this);
// //     controller.duration = Duration(seconds: 3);
// //   }

// //   @override
// //   void dispose() {
// //     controller.dispose();
// //     super.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return TextButton(
// //       child: Text("Show bottom sheet"),
// //       onPressed: () => showModalBottomSheet<void>(
// //         context: context,
// //         transitionAnimationController: controller,
// //         builder: (context) {
// //           return Container(
// //             child: Text("Your bottom sheet"),
// //           );
// //         },
// //       ),
// //     );
// //   }
// // }

// const Duration _kBottomSheetDuration = Duration(milliseconds: 200);

// class ModalBottomSheetRoute<T> extends PopupRoute<T> {
//   ModalBottomSheetRoute({
//     required this.builder,
//     // this.theme,
//     this.barrierLabel,
//     RouteSettings? settings,
//   }) : super(settings: settings);

//   final WidgetBuilder builder;
//   // final ThemeData theme;

//   @override
//   final String? barrierLabel;

//   // late AnimationController _animationController;

//   @override
//   Duration get transitionDuration => _kBottomSheetDuration;

//   @override
//   bool get barrierDismissible => true;

//   @override
//   Color get barrierColor => Colors.black38; // Palette.black50;

//   // @override
//   // AnimationController createAnimationController() {
//   //   _animationController = BottomSheet.createAnimationController(navigator?.overlay ?? null overlay);
//   //   return _animationController;
//   // }

//   @override
//   Widget buildPage(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
//     // By definition, the bottom sheet is aligned to the bottom of the page
//     // and isn't exposed to the top padding of the MediaQuery.
//     Widget bottomSheet = MediaQuery.removePadding(
//       context: context,
//       removeTop: true,
//       child: _ModalBottomSheet<T>(route: this),
//     );
//     // if (theme != null) {
//     //   bottomSheet = Theme(data: theme, child: bottomSheet);
//     // }
//     return bottomSheet;
//   }
// }

// class _ModalBottomSheet<T> extends StatefulWidget {
//   const _ModalBottomSheet({Key? key, required this.route}) : super(key: key);

//   final ModalBottomSheetRoute<T> route;

//   @override
//   _ModalBottomSheetState<T> createState() => _ModalBottomSheetState<T>();
// }

// class _ModalBottomSheetState<T> extends State<_ModalBottomSheet<T>> {
//   @override
//   Widget build(BuildContext context) {
//     final MaterialLocalizations localizations = MaterialLocalizations.of(context);
//     String routeLabel = '';

//     return BottomSheet(
//       // animationController: widget.route._animationController,
//       onClosing: () => Navigator.pop(context),
//       builder: widget.route.builder,
//     );

//     // switch (defaultTargetPlatform) {
//     //   case TargetPlatform.iOS:
//     //     routeLabel = '';
//     //     break;
//     //   case TargetPlatform.macOS:
//     //   case TargetPlatform.linux:
//     //   case TargetPlatform.windows:
//     //   case TargetPlatform.android:
//     //   case TargetPlatform.fuchsia:
//     //     routeLabel = localizations.dialogLabel;
//     //     break;
//     // }

//     // return GestureDetector(
//     //   excludeFromSemantics: true,
//     //   child: AnimatedBuilder(
//     //     animation: widget.route.animation,
//     //     builder: (BuildContext context, Widget child) {
//     //       // Disable the initial animation when accessible navigation is on so
//     //       // that the semantics are added to the tree at the correct time.
//     //       final animationValue = context.mediaQuery.accessibleNavigation ? 1.0 : widget.route.animation.value;
//     //       return Semantics(
//     //         scopesRoute: true,
//     //         namesRoute: true,
//     //         label: routeLabel,
//     //         explicitChildNodes: true,
//     //         child: ClipRect(
//     //           child: CustomSingleChildLayout(
//     //             delegate: _ModalBottomSheetLayout(animationValue),
//     //             child: BottomSheet(
//     //               animationController: widget.route._animationController,
//     //               onClosing: () => Navigator.pop(context),
//     //               builder: widget.route.builder,
//     //             ),
//     //           ),
//     //         ),
//     //       );
//     //     },
//     //   ),
//     // );
//   }
// }

// // import 'package:flutter/material.dart';

// // const Duration _kBottomSheetDuration = Duration(milliseconds: 200);

// // class BottomSheetRoute<T> extends PopupRoute<T> {
// //   BottomSheetRoute({
// //     this.builder,
// //     // this.theme,
// //     required this.barrierLabel,
// //     this.barrierColor,
// //     RouteSettings settings,
// //     this.resizeToAvoidBottomInset,
// //     this.dismissOnTap,
// //     this.callbackAfterClose,
// //     this.topPadding = 0,
// //   }) : super(settings: settings);

// //   final WidgetBuilder builder;
// //   // final ThemeData theme;
// //   final bool resizeToAvoidBottomInset;
// //   final bool dismissOnTap;
// //   final VoidCallback? callbackAfterClose;
// //   final double? topPadding;

// //   @override
// //   final String barrierLabel;

// //   @override
// //   final Color barrierColor;

// //   AnimationController _animationController;

// //   @override
// //   Duration get transitionDuration => _kBottomSheetDuration;

// //   @override
// //   bool get barrierDismissible => true;

// //   // @override
// //   // AnimationController createAnimationController() {
// //   //   assert(_animationController == null);
// //   //   _animationController = BottomSheet.createAnimationController(navigator)..duration = _kBottomSheetDuration;
// //   //   return _animationController;
// //   // }

// //   // @override
// //   // void dispose() {
// //   //   callbackAfterClose?.call();
// //   //   super.dispose();
// //   // }

// //   @override
// //   Widget buildPage(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
// //     Widget bottomSheet = MediaQuery.removePadding(
// //       context: context,
// //       removeTop: true,
// //       child: _BottomSheet<T>(route: this),
// //     );
// //     if (theme != null) {
// //       bottomSheet = Theme(data: theme, child: bottomSheet);
// //     }
// //     return bottomSheet;
// //   }
// // }

// // class _BottomSheet<T> extends StatelessWidget {
// //   const _BottomSheet({
// //     Key? key,
// //     required this.route,
// //   }) : super(key: key);

// //   final BottomSheetRoute<T> route;

// //   @override
// //   Widget build(BuildContext context) {
// //     return AnimatedBuilder(
// //       animation: route.animation,
// //       builder: (BuildContext context, Widget child) {
// //         const double bottomInset = 0;
// //         return CustomSingleChildLayout(
// //           delegate: _ModalBottomSheetLayout(
// //             route.animation.value,
// //             bottomInset,
// //             context.height - route.topPadding,
// //           ),
// //           child: BottomSheet(
// //             animationController: route._animationController,
// //             onClosing: () => Navigator.pop(context),
// //             builder: route.builder,
// //           ),
// //         );
// //       },
// //     );
// //   }
// // }

// // class _ModalBottomSheetLayout extends SingleChildLayoutDelegate {
// //   const _ModalBottomSheetLayout(
// //     this.progress,
// //     this.bottomInset,
// //     this.height,
// //   );

// //   final double progress;
// //   final double bottomInset;
// //   final double height;

// //   @override
// //   BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
// //     return BoxConstraints(
// //       minWidth: constraints.maxWidth,
// //       maxWidth: constraints.maxWidth,
// //       maxHeight: height,
// //     );
// //   }

// //   @override
// //   Offset getPositionForChild(Size size, Size childSize) {
// //     return Offset(0, size.height - bottomInset - childSize.height * progress);
// //   }

// //   @override
// //   bool shouldRelayout(_ModalBottomSheetLayout oldDelegate) {
// //     return progress != oldDelegate.progress || bottomInset != oldDelegate.bottomInset;
// //   }
// // }
