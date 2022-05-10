import 'package:all_school_info/src/feature/profile/models/ui_profile_item.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({
    Key? key,
    required this.uiProfileItem,
  }) : super(key: key);

  final UiProfileItem uiProfileItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      // color: context.palette.gray12,
      child: Row(
        children: <Widget>[
          if (!uiProfileItem.subItem)
            Icon(
              uiProfileItem.icon,
              size: 22,
              color: context.palette.primary,
            ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Padding(
                  padding: uiProfileItem.subItem ? const EdgeInsets.only(left: 24) : EdgeInsets.zero,
                  child: Text(
                    uiProfileItem.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: uiProfileItem.subItem
                        ? Theme.of(context).primaryTextTheme.bodyText2?.apply(
                              color: context.design.palette.gray40,
                            )
                        : null,
                  ),
                ),
                if (uiProfileItem.addTitle != null)
                  Text(
                    uiProfileItem.addTitle!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              if (uiProfileItem.trailing != null)
                Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: uiProfileItem.trailing,
                ),
              if (uiProfileItem.needArrow)
                Icon(
                  Icons.arrow_right,
                  size: 34,
                  color: context.palette.gray22,
                ),
            ],
          ),
        ],
      ),
    );
  }
}
