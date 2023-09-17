import 'package:flutter/material.dart';

import 'categoty_item.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: MediaQuery.of(context).size.height * .15,
      height: 120,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const CategryListItem(),
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        itemCount: 8,
      ),
    );
  }
}
