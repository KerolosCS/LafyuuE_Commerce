import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class FlashSaleBanner extends StatelessWidget {
  const FlashSaleBanner({super.key, required this.url});
  final String url;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        InkWell(
          onTap: () {},
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: AspectRatio(
              //width / height
              aspectRatio: 6 / 4,
              child: Image.network(
                url,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.only(left: 16),
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       Text(
        //         'Recomended\nProduct',
        //         style: Styles.textStyle30.copyWith(color: Colors.white),
        //       ),
        //       Text(
        //         'We recommend the best for you',
        //         style: Styles.textStyle12.copyWith(color: Colors.white),
        //       ),
        //     ],
        //   ),
        // ),
      ],
    );
  }
}
