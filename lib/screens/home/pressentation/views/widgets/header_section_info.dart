import 'package:flutter/material.dart';

import '../../../../../core/utils/constant.dart';
import '../../../../../core/utils/styles.dart';

class HeaderInfo extends StatelessWidget {
  const HeaderInfo({
    super.key,
    required this.l,
    required this.r,
    this.tap,
  });
  final String l, r;
  final void Function()? tap;
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
          onTap: tap,
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
