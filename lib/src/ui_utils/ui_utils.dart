import 'package:design/design.dart';
import 'package:flutter/widgets.dart';

class UiUtils {
  static Decoration homeBgDecoration(BuildContext context) {
    return BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topRight,
        colors: <Color>[
          context.design.palette.accent.withAlpha(70),
          context.design.palette.primaryDark.withAlpha(80),
        ],
      ),
    );
  }

  static Decoration announcementCardBgDecoration(BuildContext context) {
    return BoxDecoration(
      gradient: SweepGradient(
        colors: <Color>[
          context.design.palette.gray85.withAlpha(40),
          context.design.palette.gray40.withAlpha(50),
        ],
        // transform: GradientRotation(0.7),
        center: Alignment.topLeft,
        endAngle: 0.4,
        tileMode: TileMode.mirror,
      ),
      // gradient: LinearGradient(
      //   begin: Alignment.bottomRight,
      //   end: Alignment.bottomCenter,
      //   colors: <Color>[
      //     context.design.palette.gray85.withAlpha(100),
      //     context.design.palette.gray40.withAlpha(100),
      //   ],
      // ),
      borderRadius: const BorderRadius.all(Radius.circular(8)),
    );
  }
}
