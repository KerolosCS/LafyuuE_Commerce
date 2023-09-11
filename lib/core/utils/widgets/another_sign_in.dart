import 'package:flutter/material.dart';

class SignInWay extends StatelessWidget {
  const SignInWay({super.key, required this.path, required this.txt});
  final String path;
  final String txt;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: const Color(0xffEBF0FF),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(path),
            const SizedBox(width: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                txt,
                style: const TextStyle(
                  fontSize: 14,
                  color: Color(0xff9098B1),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
