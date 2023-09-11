import 'package:flutter/material.dart';

import '../../../core/utils/widgets/custom_btn.dart';
import '../../../core/utils/widgets/custom_text_field.dart';

class RegisterTextFormFieldsSection extends StatelessWidget {
  const RegisterTextFormFieldsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTextFormField(
          hintTxt: 'Fall Name',
          preIcon: Icons.person_outlined,
        ),
        const SizedBox(height: 8),
        const CustomTextFormField(
          hintTxt: 'Your Email',
          preIcon: Icons.email_outlined,
        ),
        const SizedBox(height: 8),
        const CustomTextFormField(
          hintTxt: 'Password',
          preIcon: Icons.lock_outline,
        ),
        const SizedBox(height: 8),
        const CustomTextFormField(
          hintTxt: 'Password Again',
          preIcon: Icons.lock_outline,
        ),
        const SizedBox(height: 16),
        CustomBtn(
          onPress: () {},
          child: const Text('Sign Up'),
        ),
        const SizedBox(height: 21),
      ],
    );
  }
}
