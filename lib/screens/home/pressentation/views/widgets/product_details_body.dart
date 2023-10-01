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
import "package:flutter_bloc/flutter_bloc.dart";
import 'package:lafuu_e_commerce/core/utils/styles.dart';
import 'package:lafuu_e_commerce/core/utils/widgets/custom_btn.dart';
import 'package:lafuu_e_commerce/screens/home/data/models/product_model.dart';
import 'package:lafuu_e_commerce/screens/home/pressentation/views/widgets/color_listview.dart';
import 'package:lafuu_e_commerce/screens/home/pressentation/views/widgets/custom_app_bar_details.dart';
import 'package:lafuu_e_commerce/screens/home/pressentation/views/widgets/custom_rating.dart';
import 'package:lafuu_e_commerce/screens/home/pressentation/views/widgets/forsale_listview.dart';
import 'package:lafuu_e_commerce/screens/home/pressentation/views/widgets/header_section_info.dart';
import 'package:lafuu_e_commerce/screens/home/pressentation/views/widgets/image_of_product.dart';

import 'package:lafuu_e_commerce/screens/home/pressentation/views/widgets/size_listview.dart';
import '../../../../../core/utils/constant.dart';
import '../../../../../core/utils/widgets/smoth_indicator.dart';
import '../../manager/appCubit/home_cubit.dart';
import 'carousal_slider_for_Detalis.dart';

class ProductDetailsBody extends StatelessWidget {
  const ProductDetailsBody({super.key, this.model});
  final Product? model;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    final homeCubit = context.watch<HomeCubit>();
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: CustomAppBarForDeatails(name: model?.name ?? ''),
              ),
              CustomSliderForDetails(height: height, images: model?.images),
              const SizedBox(height: 16),
              SmoothIndicatorr(
                active: homeCubit.activeIndex,
                count: model?.images?.length,
              ),
              //Name -------------love
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width * .75,
                          child: Text(
                            model!.name ?? '',
                            style: Styles.textStyle20.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/images/love.png',
                            width: 24,
                          ),
                        ),

                        //rating
                      ],
                    ),
                    const SizedBox(height: 8),
                    const CustomRatingWidget(),
                    const SizedBox(height: 8),
                    //price
                    Text(
                      '${model?.price} EGP',
                      style: Styles.textStyle20.copyWith(
                        color: kPrimaryColor,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 24),
                    //size
                    const Text('Select Size', style: Styles.textStyle14),
                    const SizedBox(height: 12),
                    const SizeListView(),
                    const SizedBox(height: 24),
                    //Color
                    const Text('Select Color', style: Styles.textStyle14),
                    const SizedBox(height: 12),
                    const ColorListView(),
                    const SizedBox(height: 24),
                    //Specification
                    const Text('Specification', style: Styles.textStyle14),
                    const SizedBox(height: 12),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Show : ',
                          style: Styles.textStyle12,
                        ),
                        const Spacer(),
                        Text(
                          'Laser\nBlue/Anthracite/Watermel\non/White',
                          textAlign: TextAlign.right,
                          style: Styles.textStyle12.copyWith(
                            fontWeight: FontWeight.w400,
                            color: kSecondearyFontColor,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        const Text(
                          'Style : ',
                          style: Styles.textStyle12,
                        ),
                        const Spacer(),
                        Text(
                          'CD0113-400',
                          style: Styles.textStyle12.copyWith(
                            color: kSecondearyFontColor,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Text(
                      model?.description ?? '',
                      style: Styles.textStyle12.copyWith(
                        color: kSecondearyFontColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 24),
                    //PRoduct Review

                    const HeaderInfo(
                      l: 'Review Product',
                      r: 'See More',
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const CustomRatingWidget(),
                        Text(
                          ' 4.5 ',
                          style: Styles.textStyle10.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Text(
                          ' (5 reviews)',
                          style: Styles.textStyle10,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),

                    const Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/logo2.png'),
                          radius: 24,
                        ),
                        SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'James Lawson',
                              style: Styles.textStyle14,
                            ),
                            CustomRatingWidget(),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.',
                      style: Styles.textStyle12.copyWith(
                        color: kSecondearyFontColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                    const SizedBox(height: 16),

                    const Row(
                      children: [
                        ImageOfProduct(),
                        SizedBox(height: 12),
                        ImageOfProduct(),
                        SizedBox(height: 12),
                        ImageOfProduct(),
                      ],
                    ),

                    const SizedBox(height: 16),

                    const Text(
                      'December 10, 2016',
                      style: Styles.textStyle10,
                    ),
                    const SizedBox(height: 16),
                    const HeaderInfo(l: 'You Might Also Like', r: ''),
                    const SizedBox(height: 16),
                    const ForSaleProductsListview(),
                    const SizedBox(height: 20),
                    CustomBtn(
                        onPress: () {},
                        child: Text(
                          'Add To Cart',
                          style: Styles.textStyle14.copyWith(
                            color: Colors.white,
                          ),
                        )),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
