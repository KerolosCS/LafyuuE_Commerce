import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterHeaderSection extends StatelessWidget {
  const RegisterHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/logo2.png',
          height: 72,
        ),
        const SizedBox(height: 16),
        Text(
          'Welcome to Lafyuu',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w700,
            fontSize: 16,
            color: const Color(0xff223263), //background: #223263;
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          'Create an new account',
          style: TextStyle(
            fontSize: 12, //background: #9098B1;
            color: Color(0xff9098B1),
          ),
        ),
        const SizedBox(height: 28),
      ],
    );
  }
}
