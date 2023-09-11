import 'package:flutter/material.dart';
import 'package:lafuu_e_commerce/screens/Register/widgets/register_have_acc_section.dart';
// import 'package:flutter/widgets.dart';
import 'package:lafuu_e_commerce/screens/Register/widgets/register_header_section.dart';
import 'package:lafuu_e_commerce/screens/Register/widgets/register_text_forms.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * .0905,
            left: 16,
            right: 16,
          ),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                const RegisterHeaderSection(),
                const RegisterTextFormFieldsSection(),
                const HaveAccountSection(),
                SizedBox(height: MediaQuery.of(context).size.height * .17),
                Image.asset(
                  'assets/images/Home Indicator.png',
                  width: MediaQuery.of(context).size.width * .4,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
