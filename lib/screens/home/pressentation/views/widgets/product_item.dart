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

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lafuu_e_commerce/screens/home/data/models/product_model.dart';
import 'package:lafuu_e_commerce/screens/home/pressentation/views/product_details_view.dart';

import '../../../../../core/utils/constant.dart';
import '../../../../../core/utils/styles.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, this.product});
  final Product? product;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProductDetailsView(model: product),
            ));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          border: Border.all(color: const Color(0xffEBF0FF)),
        ),
        width: 110,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CachedNetworkImage(
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                height: 110,
                imageUrl: product?.image ??
                    'https://student.valuxapps.com/storage/uploads/products/1615440322npwmU.71DVgBTdyLL._SL1500_.jpg',
              ),
              const SizedBox(height: 8),
              Text(
                '${product?.name}',
                style: Styles.textStyle12,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Text(
                    '${product?.price} EGP',
                    style: Styles.textStyle12.copyWith(
                      color: kPrimaryColor,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              if ((product?.oldPrice != product?.price) &&
                  product?.oldPrice != null)
              Row(
                  children: [
                    Text(
                      '${product?.oldPrice}',
                      style: Styles.textStyle10.copyWith(
                        // color: kPrimaryColor,
                        decoration: TextDecoration.lineThrough,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  const Spacer(),
                  if (product?.oldPrice != product?.price)
                    Text(
                      '%${product?.discount}',
                      style: Styles.textStyle10.copyWith(
                          color: const Color(0xffFB7181),
                          fontWeight: FontWeight.w700),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
