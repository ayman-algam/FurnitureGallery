import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture/models/product.dart';

import '../../../constants.dart';
import 'c02_product_booster.dart';
import 'c03_list_of_colors.dart';
import 'c04_cart_counter_and_add_to_favorites.dart';
import 'c04_chat_and_add_to_cart.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              decoration: const BoxDecoration(
                color: kBackgroundColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Hero(
                      tag: "${product.id}",
                      child: ProductPoster(
                        size: size,
                        product: product,
                      ),
                    ),
                  ),
                  const ListOfColors(),
                  // Title
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                    child: Text(
                      product.title,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  // Price
                  Text(
                    "\$${product.price}",
                    style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: kSecondaryColor),
                  ),
                  // Description
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: kDefaultPadding / 2,
                    ),
                    child: Text(
                      product.description,
                      style: const TextStyle(
                        color: kTextColor,
                      ),
                    ),
                  ),

                  const CartCounterAndAddToFavorites(),

                  const SizedBox(
                    height: kDefaultPadding,
                  ),
                ],
              ),
            ),
            const ChatAndAddToCart()
          ],
        ),
      ),
    );
  }
}