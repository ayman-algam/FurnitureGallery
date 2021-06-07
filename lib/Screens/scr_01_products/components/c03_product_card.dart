import 'package:flutter/material.dart';
import 'package:furniture/models/product.dart';

import '../../../constants.dart';

class ProductCard extends StatelessWidget {
  final int itemIndex;
  final Product product;
  final Function() onPress;

  const ProductCard({
    Key? key,
    required this.product,
    required this.itemIndex, required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 160,
      margin: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      //color: Colors.blueAccent,
      child: GestureDetector(
        onTap: onPress,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            // Its is our background
            Container(
              height: 136,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: itemIndex.isEven ? kBlueColor : kSecondaryColor,
                boxShadow: const [kDefaultShadow],
              ),
              child: Container(
                margin: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22), color: Colors.white),
              ),
            ),
            // Product Image
            Positioned(
              top: 0,
              right: 0,
              child: Hero(
                tag: "${product.id}",
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: kDefaultPadding,
                  ),
                  height: 160,
                  width: 200,
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            // Product Title And Price
            Positioned(
              bottom: 0,
              left: 0,
              child: SizedBox(
                height: 136,
                // the image takes 200, and the remaining to the title and price
                width: size.width - 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPadding,
                        vertical: kDefaultPadding / 2,
                      ),
                      child: Text(
                        product.description,
                        style: Theme.of(context).textTheme.button,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPadding * 1.5,
                        vertical: kDefaultPadding / 4,
                      ),
                      decoration: BoxDecoration(
                        color: itemIndex.isEven ? kBlueColor : kSecondaryColor,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(22),
                          bottomLeft: Radius.circular(22),
                        ),
                      ),
                      child: Text(
                        "\$ ${product.price}",
                        style: Theme.of(context).textTheme.button,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
