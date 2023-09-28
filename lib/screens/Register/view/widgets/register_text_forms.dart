import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_router.dart';
import '../../../../core/utils/widgets/custom_btn.dart';
import '../../../../core/utils/widgets/custom_text_field.dart';

class RegisterTextFormFieldsSection extends StatelessWidget {
  const RegisterTextFormFieldsSection({
    super.key,
    required this.formKeySign,
  });
  final GlobalKey<FormState> formKeySign;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKeySign,
      child: Column(
        children: [
          CustomTextFormField(
            valid: (p0) => p0!.isEmpty ? 'Please enter your name' : null,
            hintTxt: 'Fall Name',
            preIcon: Icons.person_outlined,
          ),
          const SizedBox(height: 8),
          CustomTextFormField(
            valid: (p0) => p0!.isEmpty ? 'Please enter your email' : null,
            hintTxt: 'Your Email',
            preIcon: Icons.email_outlined,
          ),
          const SizedBox(height: 8),
          CustomTextFormField(
            valid: (p0) => p0!.isEmpty ? 'Please enter your password' : null,
            hintTxt: 'Password',
            preIcon: Icons.lock_outline,
          ),
          const SizedBox(height: 8),
          CustomTextFormField(
            valid: (p0) => p0!.isEmpty ? 'Please enter your password' : null,
            hintTxt: 'Password Again',
            preIcon: Icons.lock_outline,
          ),
          const SizedBox(height: 16),
          CustomBtn(
            onPress: () {
              if (formKeySign.currentState!.validate()) {
                GoRouter.of(context).pushReplacement(
                  AppRouter.kHomeScreen,
                );
              }
            },
            child: const Text('Sign Up'),
          ),
          const SizedBox(height: 21),
        ],
      ),
    );
  }
}
