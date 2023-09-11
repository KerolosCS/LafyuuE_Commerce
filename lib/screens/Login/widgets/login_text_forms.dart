import 'package:flutter/material.dart';

import '../../../core/utils/widgets/custom_btn.dart';
import '../../../core/utils/widgets/custom_text_field.dart';

class LoginTextFormFieldsSection extends StatelessWidget {
  const LoginTextFormFieldsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTextFormField(
          hintTxt: 'Your Email',
          preIcon: Icons.mail_outline,
        ),
        const SizedBox(height: 8),
        const CustomTextFormField(
          hintTxt: 'Password',
          preIcon: Icons.lock_outline,
        ),
        const SizedBox(height: 16),
        CustomBtn(
          onPress: () {},
          child: const Text('Sign in'),
        ),
        const SizedBox(height: 21),
      ],
    );
  }
}
