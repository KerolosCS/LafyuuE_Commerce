import 'package:flutter/material.dart';
import 'package:lafuu_e_commerce/core/utils/constant.dart';
import 'package:lafuu_e_commerce/core/utils/styles.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.black.withOpacity(0.2),
        ),
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Container(
            width: 75,
            height: 75,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/image Product.png'),
              ),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width - (120),
                  child: Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * .40,
                        child: Text(
                          'Nike Air Zoom Pegasus 36 Miami',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Styles.textStyle12.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        color: Colors.redAccent,
                        padding: const EdgeInsets.all(0),
                        constraints: const BoxConstraints(),
                        onPressed: () {},
                        icon: const Icon(Icons.favorite),
                      ),
                      const SizedBox(width: 8),
                      IconButton(
                        color: Colors.grey,
                        padding: const EdgeInsets.all(0),
                        constraints: const BoxConstraints(),
                        onPressed: () {},
                        icon: const Icon(Icons.delete_outline),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Text(
                      '\$299,43',
                      style: Styles.textStyle12.copyWith(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: const Color(0xffEBF0FF),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 6,
                                horizontal: 10,
                              ),
                              child: const Text('-'),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 6,
                              horizontal: 16,
                            ),
                            color: const Color(0xffEBF0FF),
                            child: const Text('1'),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 6,
                                horizontal: 10,
                              ),
                              child: const Text('+'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
