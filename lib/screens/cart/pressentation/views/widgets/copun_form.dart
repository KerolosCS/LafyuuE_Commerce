import 'package:flutter/material.dart';
import 'package:lafuu_e_commerce/core/utils/constant.dart';
import 'package:lafuu_e_commerce/core/utils/widgets/custom_text_field.dart';

class CopunForm extends StatelessWidget {
  const CopunForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.sizeOf(context).width - 32,
          child: CustomTextFormField(
            height: 56,
            suff: InkWell(
              onTap: () {},
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  ),
                  color: kPrimaryColor,
                ),
                width: 75,
                height: 56,
                child: const Center(
                  child: Text(
                    'Apply',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
