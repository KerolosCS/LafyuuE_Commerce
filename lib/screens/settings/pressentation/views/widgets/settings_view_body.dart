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
import 'package:lafuu_e_commerce/core/utils/constant.dart';
import 'package:lafuu_e_commerce/core/utils/styles.dart';
import 'package:lafuu_e_commerce/screens/settings/pressentation/views/profile_view.dart';

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const AccTitle(),
            AccountItem(
              leading: Icons.person_outline,
              txt: 'Profile',
              onTp: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileView(),
                  ),
                );
              },
            ),
            const AccountItem(
              leading: Icons.inbox_outlined,
              txt: 'Order',
            ),
            const AccountItem(
              leading: Icons.location_on_outlined,
              txt: 'Address',
            ),
            const AccountItem(
              leading: Icons.payment_outlined,
              txt: 'Payment',
            ),
          ],
        ),
      ),
    );
  }
}

class AccountItem extends StatelessWidget {
  const AccountItem({
    super.key,
    required this.leading,
    required this.txt,
    this.onTp,
  });
  final IconData leading;
  final String txt;
  final void Function()? onTp;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTp,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: Row(
          children: [
            Icon(
              size: 30,
              leading,
              color: kPrimaryColor,
            ),
            const SizedBox(width: 12),
            Text(
              txt,
              style: Styles.textStyle14,
            ),
          ],
        ),
      ),
    );
  }
}

class AccTitle extends StatelessWidget {
  const AccTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Account',
                style: Styles.textStyle16,
              ),
            ),
          ],
        ),
        Divider(
          height: 2,
          // color: Colors.amber,
        ),
      ],
    );
  }
}
