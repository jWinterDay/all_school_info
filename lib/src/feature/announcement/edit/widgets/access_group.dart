import 'package:design/design.dart';
import 'package:flutter/material.dart';

class AccessGroup extends StatelessWidget {
  const AccessGroup({
    Key? key,
    required this.accessGroup,
    required this.checked,
  }) : super(key: key);

  final String accessGroup;
  final bool checked;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: SizedBox(
        height: 48,
        child: ColoredBox(
          color: context.design.palette.gray22,
          child: Row(
            children: <Widget>[
              if (checked) const Icon(Icons.check_box_outlined) else const Icon(Icons.check_box_outline_blank),
              Text(accessGroup),
            ],
          ),
        ),
      ),
    );
  }
}
