import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/widgets/custom_btn.dart';
import '../../../../../core/utils/widgets/custom_text_field.dart';

class LoginTextFormFieldsSection extends StatelessWidget {
  const LoginTextFormFieldsSection({
    super.key,
    required this.formKeyLog,
  });
  
  final GlobalKey<FormState> formKeyLog;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKeyLog,
      child: Column(
        children: [
          CustomTextFormField(
            valid: (p0) => p0!.isEmpty ? 'Please enter your email' : null,
            hintTxt: 'Your Email',
            preIcon: Icons.mail_outline,
          ),
          const SizedBox(height: 8),
          CustomTextFormField(
            valid: (p0) => p0!.isEmpty ? 'Please enter your password' : null,
            hintTxt: 'Password',
            preIcon: Icons.lock_outline,
          ),
          const SizedBox(height: 16),
          CustomBtn(
            onPress: () {
              if (formKeyLog.currentState!.validate()) {
                GoRouter.of(context).pushReplacement(AppRouter.kHomeScreen);
              }
            },
            child: const Text('Sign in'),
          ),
          const SizedBox(height: 21),
        ],
      ),
    );
  }
}
