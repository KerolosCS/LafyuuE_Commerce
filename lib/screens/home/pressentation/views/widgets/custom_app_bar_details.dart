import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lafuu_e_commerce/core/utils/constant.dart';

import '../../../../../core/utils/styles.dart';

class CustomAppBarForDeatails extends StatelessWidget {
  const CustomAppBarForDeatails({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: Row(
            children: [
              IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                onPressed: () {
                  GoRouter.of(context).pop();
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(width: 12),
              SizedBox(
                width: MediaQuery.sizeOf(context).width * .6,
                child: Text(
                  name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textStyle20.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const Spacer(),
              IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                onPressed: () {},
                icon: Image.asset(
                  'assets/images/Search.png',
                  width: 24,
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert_outlined,
                  color: kSecondearyFontColor,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 1.5,
          color: const Color(0xffEBF0FF),
        ),
        // const SizedBox(height: 16)
      ],
    );
  }
}
