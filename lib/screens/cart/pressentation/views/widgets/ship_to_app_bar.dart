import 'package:flutter/material.dart';
import 'package:lafuu_e_commerce/core/utils/constant.dart';
import 'package:lafuu_e_commerce/core/utils/styles.dart';

class CustomAppBarToShape extends StatelessWidget {
  const CustomAppBarToShape({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: Row(
            children: [
              IconButton(
                padding: const EdgeInsets.all(0),
                constraints: const BoxConstraints(),
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(width: 8),
              const Text(
                'Ship TO',
                style: Styles.textStyle16,
              ),
              const Spacer(),
              IconButton(
                padding: const EdgeInsets.all(0),
                constraints: const BoxConstraints(),
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                  color: kPrimaryColor,
                ),
              ),
            ],
          ),
        ),
        const Divider(
          height: 2,
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
