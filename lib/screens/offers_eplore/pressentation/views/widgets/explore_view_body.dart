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
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lafuu_e_commerce/core/utils/styles.dart';
import 'package:lafuu_e_commerce/core/utils/widgets/custom_text_field.dart';
import 'package:lafuu_e_commerce/screens/home/pressentation/manager/categoryCubit/category_cubit.dart';
import 'package:lafuu_e_commerce/screens/home/pressentation/views/fav_view.dart';
import 'package:lafuu_e_commerce/screens/home/pressentation/views/widgets/categoty_item.dart';
import 'package:lafuu_e_commerce/screens/home/pressentation/views/widgets/product_item.dart';
import 'package:lafuu_e_commerce/screens/offers_eplore/pressentation/manager/cubit/search_cubit.dart';


class EploreViewbody extends StatelessWidget {
  const EploreViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchCont = TextEditingController();
    double width = MediaQuery.sizeOf(context).width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: BlocBuilder<SearchCubit, SearchState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              children: [
                CustomAppBarForEplore(
                  width: width,
                  searchCont: searchCont,
                  onChange: (value) {
                    // if (value != "") {
                    SearchCubit.get(context).searchProduct(value);
                    // }
                  },
                ),
                const ProductsGridViewSearch(),

                // if (state is SearchSuccess)
              ],
            ),
          );
        },
      ),
    );
  }
}

class CustomAppBarForEplore extends StatelessWidget {
  const CustomAppBarForEplore({
    super.key,
    required this.width,
    required this.searchCont,
    this.onChange,
  });
  final double width;
  final TextEditingController searchCont;
  final void Function(String)? onChange;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomTextFormField(
            onChange: onChange,
            cont: searchCont,
            width: width * .69,
            hintTxt: "Search product",
            preIcon: FontAwesomeIcons.magnifyingGlass,
          ),
          IconButton(
            padding: const EdgeInsets.all(0),
            constraints: const BoxConstraints(),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FavouriteScreenView(),
                ),
              );
            },
            icon: Image.asset('assets/images/love.png'),
          ),
          IconButton(
            padding: const EdgeInsets.all(0),
            constraints: const BoxConstraints(),
            onPressed: () {},
            icon: Image.asset('assets/images/Notification.png'),
          ),
        ],
      ),
    );
  }
}

class ProductsGridViewSearch extends StatelessWidget {
  const ProductsGridViewSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccess) {
          return GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 1 / 1.35, // width/height
            children: List.generate(
              SearchCubit.get(context).res.length,
              (index) => ProductItem(
                product: SearchCubit.get(context).res[index],
              ),
            ),
          );
        } else if (state is SearchFailure) {
          return Text(state.errorSearch);
        } else if (state is SearchLoading) {
          return SizedBox(
            height: MediaQuery.sizeOf(context).height - 100,
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (state is EmptySearch) {
          return const MainContent();
        } else {
          return const MainContent();
        }
      },
    );
  }
}
//All rights -- Kerolos Fady --Flutter Developer

class MainContent extends StatelessWidget {
  const MainContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Text(
              'Categries',
              style: Styles.textStyle14,
            ),
          ],
        ),
        const SizedBox(height: 16),
        Wrap(
          alignment: WrapAlignment.start,
          spacing: 8,
          runSpacing: 8,
          children: [
            CategryListItem(category: CategoryCubit.get(context).cats[0]),
            CategryListItem(category: CategoryCubit.get(context).cats[1]),
            CategryListItem(category: CategoryCubit.get(context).cats[2]),
            CategryListItem(category: CategoryCubit.get(context).cats[3]),
            CategryListItem(category: CategoryCubit.get(context).cats[4]),
          ],
        ),
      ],
    );
  }
}
