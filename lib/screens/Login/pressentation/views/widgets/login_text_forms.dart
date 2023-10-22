/*
 *
 * ----------------
 * | 241030072002 |
 * ----------------
 * Copyright © [2023] KERO CS FLUTTER DEVELOPMENT.
 * All Rights Reserved. For inquiries or permissions, contact  me ,
 * https://www.linkedin.com/in/kerolos-fady-software-engineer/
 *
 * /
 */

// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lafuu_e_commerce/screens/home/pressentation/manager/appCubit/home_cubit.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/widgets/custom_btn.dart';
import '../../../../../core/utils/widgets/custom_text_field.dart';

class LoginTextFormFieldsSection extends StatelessWidget {
  const LoginTextFormFieldsSection({
    super.key,
    required this.formKeyLog,
    this.emailCont,
    this.passCont,
  });
  final TextEditingController? emailCont;
  final TextEditingController? passCont;
  final GlobalKey<FormState> formKeyLog;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          GoRouter.of(context).pushReplacement(AppRouter.kHomeScreen);
        }
        if (state is LoginSuccessWrongPass) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Invalid Password or Email'),
            ),
          );
        }
      },
      builder: (context, state) {
        return Form(
          key: formKeyLog,
          child: Column(
            children: [
              CustomTextFormField(
                cont: emailCont,
                valid: (p0) => p0!.isEmpty ? 'Please enter your email' : null,
                hintTxt: 'Your Email',
                preIcon: Icons.mail_outline,
              ),
              const SizedBox(height: 8),
              CustomTextFormField(
                suffIcon: HomeCubit.get(context).isObsec == true
                    ? Icons.visibility_off
                    : Icons.visibility,
                pressSufffix: () => HomeCubit.get(context).changeVis(),
                obsec: HomeCubit.get(context).isObsec,
                cont: passCont,
                valid: (p0) =>
                    p0!.isEmpty ? 'Please enter your password' : null,
                hintTxt: 'Password',
                preIcon: Icons.lock_outline,
              ),
              const SizedBox(height: 16),
              CustomBtn(
                onPress: () {
                  if (formKeyLog.currentState!.validate()) {
                    HomeCubit.get(context).loginAccount(
                      emailCont!.text,
                      passCont!.text,
                    );
                  }
                },
                child: state is LoginLodinag
                    ? const Center(
                        child: CircularProgressIndicator(
                          color: Colors.white,
                        ),
                      )
                    : const Text('Sign in'),
              ),
              const SizedBox(height: 21),
            ],
          ),
        );
      },
    );
  }
}
