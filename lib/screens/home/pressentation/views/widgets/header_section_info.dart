import 'package:flutter/material.dart';

import '../../../../../core/utils/constant.dart';
import '../../../../../core/utils/styles.dart';

class HeaderInfo extends StatelessWidget {
  const HeaderInfo({
    super.key,
    required this.l,
    required this.r,
  });
  final String l, r;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          l,
          style: Styles.textStyle14,
        ),
        const Spacer(),
        InkWell(
          onTap: () {},
          child: Text(
            r,
            style: Styles.textStyle14.copyWith(
              color: kPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
