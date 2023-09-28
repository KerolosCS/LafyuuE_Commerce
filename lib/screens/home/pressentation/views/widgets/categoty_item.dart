import 'package:flutter/material.dart';
import 'package:lafuu_e_commerce/screens/home/data/models/category_model.dart';

import '../../../../../core/utils/styles.dart';

class CategryListItem extends StatelessWidget {
  const CategryListItem({super.key, required this.category});
  final DataOfCategory category;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(left: 4.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 36,
              backgroundColor: Colors.black,
              child: CircleAvatar(
                radius: 35,
                backgroundImage: NetworkImage(category.image??''),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              category.name ?? '',
              style: Styles.textStyle10,
            ),
          ],
        ),
      ),
    );
  }
}
