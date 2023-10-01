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
import 'package:lafuu_e_commerce/screens/home/data/models/product_model.dart';

import '../../../../../core/utils/constant.dart';
import '../../../../../core/utils/styles.dart';

class FavProductItem extends StatelessWidget {
  FavProductItem({super.key, this.product});
  Product? product;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
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
              Image.network(
                product?.image ??
                    'https://student.valuxapps.com/storage/uploads/products/1615440322npwmU.71DVgBTdyLL._SL1500_.jpg',
                height: 109,
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
                    '\$${product?.price}',
                    style: Styles.textStyle12.copyWith(
                      color: kPrimaryColor,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              Row(
                children: [
                  if (product?.oldPrice != product?.price)
                    Text(
                      '\$${product?.oldPrice}',
                      style: Styles.textStyle10.copyWith(
                        // color: kPrimaryColor,
                        decoration: TextDecoration.lineThrough,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  const SizedBox(width: 8),
                  if (product?.oldPrice != product?.price)
                    Text(
                      '%${product?.discount}',
                      style: Styles.textStyle10.copyWith(
                          color: const Color(0xffFB7181),
                          fontWeight: FontWeight.w700),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  const Spacer(),
                  IconButton(
                    padding: const EdgeInsets.all(0),
                    constraints: const BoxConstraints(),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.delete_outline,
                      color: kSecondearyFontColor,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
