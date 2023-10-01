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

import 'package:flutter/material.dart';
import 'package:lafuu_e_commerce/screens/Register/view/widgets/register_have_acc_section.dart';
// import 'package:flutter/widgets.dart';
import 'package:lafuu_e_commerce/screens/Register/view/widgets/register_header_section.dart';
import 'package:lafuu_e_commerce/screens/Register/view/widgets/register_text_forms.dart';

// ignore: must_be_immutable
class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  var nameCont = TextEditingController();
  // var phoneCont = TextEditingController();
  var emailCont = TextEditingController();
  var phoneCont = TextEditingController();
  var passwordCont = TextEditingController();
  var passwordAgainCont = TextEditingController();
  GlobalKey<FormState> formKeySign = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        body: Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * .0905,
            left: 16,
            right: 16,
          ),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  children: [
                    const RegisterHeaderSection(),
                    RegisterTextFormFieldsSection(
                      formKeySign: formKeySign,
                      nameCont: nameCont,
                      phoneCont: phoneCont,
                      passwordCont: passwordCont,
                      passwordAgainCont: passwordAgainCont,
                      emailCont: emailCont,
                    ),
                    const HaveAccountSection(),
                    // SizedBox(height: MediaQuery.of(context).size.height * .17),
                    const Spacer(),
                    Image.asset(
                      'assets/images/Home Indicator.png',
                      width: MediaQuery.of(context).size.width * .4,
                    ),
                    const SizedBox(height: 6),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
