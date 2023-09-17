import 'package:flutter/material.dart';
import 'package:lafuu_e_commerce/screens/Login/pressentation/views/widgets/login_header_section.dart';
import 'package:lafuu_e_commerce/screens/Login/pressentation/views/widgets/login_othereays_section.dart';
import 'package:lafuu_e_commerce/screens/Login/pressentation/views/widgets/login_text_forms.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.only(
            left: 16,
            right: 16,
            top: MediaQuery.of(context).size.height * .0905,
          ),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  children: [
                    const LoginHeaderSection(),
                    const LoginTextFormFieldsSection(),
                    const LoginOthwerWaysSection(),
                    // SizedBox(height: MediaQuery.of(context).size.height * .05),
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
