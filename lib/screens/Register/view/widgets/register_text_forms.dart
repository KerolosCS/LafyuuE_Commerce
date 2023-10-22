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

import '../../../../core/utils/app_router.dart';
import '../../../../core/utils/widgets/custom_btn.dart';
import '../../../../core/utils/widgets/custom_text_field.dart';

class RegisterTextFormFieldsSection extends StatelessWidget {
  const RegisterTextFormFieldsSection({
    super.key,
    required this.formKeySign,
    this.nameCont,
    // this.phoneCont,
    this.emailCont,
    this.passwordCont,
    this.passwordAgainCont,
    this.phoneCont,
  });
  final GlobalKey<FormState> formKeySign;
  final TextEditingController? nameCont;
  final TextEditingController? phoneCont;
  final TextEditingController? passwordAgainCont;
  final TextEditingController? emailCont;
  final TextEditingController? passwordCont;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state is CheckPassword) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Center(
                child: Text('Please check your Password'),
              ),
            ),
          );
        }
        if (state is RegisterSuccess) {
          GoRouter.of(context).pushReplacement(
            AppRouter.kHomeScreen,
          );
        }
        if (state is RegisterSuccessButWrong) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errMsg),
            ),
          );
        }
      },
      builder: (context, state) {
        return Form(
          key: formKeySign,
          child: Column(
            children: [
              CustomTextFormField(
                cont: nameCont,
                valid: (p0) => p0!.isEmpty ? 'Please enter your name' : null,
                hintTxt: 'Fall Name',
                preIcon: Icons.person_outlined,
              ),
              const SizedBox(height: 8),
              CustomTextFormField(
                cont: phoneCont,
                valid: (p0) => p0!.isEmpty ? 'Please enter your Phone' : null,
                hintTxt: 'Phone',
                preIcon: Icons.phone,
              ),
              const SizedBox(height: 8),
              CustomTextFormField(
                cont: emailCont,
                valid: (p0) => p0!.isEmpty ? 'Please enter your email' : null,
                hintTxt: 'Your Email',
                preIcon: Icons.email_outlined,
              ),
              const SizedBox(height: 8),
              CustomTextFormField(
                suffIcon: HomeCubit.get(context).isObsec == true
                    ? Icons.visibility_off
                    : Icons.visibility,
                pressSufffix: () => HomeCubit.get(context).changeVis(),
                obsec: HomeCubit.get(context).isObsec,
                cont: passwordCont,
                valid: (p0) =>
                    p0!.isEmpty ? 'Please enter your password' : null,
                hintTxt: 'Password',
                preIcon: Icons.lock_outline,
              ),
              const SizedBox(height: 8),
              CustomTextFormField(
                suffIcon: HomeCubit.get(context).isObsec2 == true
                    ? Icons.visibility_off
                    : Icons.visibility,
                pressSufffix: () => HomeCubit.get(context).changeVisTwo(),
                obsec: HomeCubit.get(context).isObsec2,
                cont: passwordAgainCont,
                valid: (p0) =>
                    p0!.isEmpty ? 'Please enter your password' : null,
                hintTxt: 'Password Again',
                preIcon: Icons.lock_outline,
              ),
              const SizedBox(height: 16),
              CustomBtn(
                onPress: () {
                  if (formKeySign.currentState!.validate()) {
                    HomeCubit.get(context).registerAccount(
                      nameCont!.text,
                      phoneCont!.text,
                      emailCont!.text,
                      passwordCont!.text,
                      passwordAgainCont!.text,
                    );
                  }
                },
                child: (state is RegisterLodinag)
                    ? const Center(
                        child: CircularProgressIndicator(
                          color: Colors.white,
                        ),
                      )
                    : const Text('Sign Up'),
              ),
              const SizedBox(height: 21),
            ],
          ),
        );
      },
    );
  }
}
