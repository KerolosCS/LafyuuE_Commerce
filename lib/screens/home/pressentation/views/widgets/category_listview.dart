
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafuu_e_commerce/screens/home/pressentation/manager/categoryCubit/category_cubit.dart';


import 'categoty_item.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, CategoryState>(
      builder: (context, state) {
        if (state is FetchCategorySuccess) {
          return SizedBox(
            // height: MediaQuery.of(context).size.height * .15,
            height: 120,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CategryListItem(
                  category: CategoryCubit.get(context).cats[index]),
              separatorBuilder: (context, index) => const SizedBox(width: 8),
              itemCount: CategoryCubit.get(context).cats.length,
            ),
          );
        } else {
          return const Padding(
            padding: EdgeInsets.all(50),
            child: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  }
}
