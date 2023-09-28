import 'package:flutter/material.dart';
import 'package:lafuu_e_commerce/screens/Register/view/widgets/register_have_acc_section.dart';
// import 'package:flutter/widgets.dart';
import 'package:lafuu_e_commerce/screens/Register/view/widgets/register_header_section.dart';
import 'package:lafuu_e_commerce/screens/Register/view/widgets/register_text_forms.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
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
                    RegisterTextFormFieldsSection(formKeySign: formKeySign),
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
