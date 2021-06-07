import 'package:flutter/material.dart';
import 'package:furniture/widgets/add_to_favorites.dart';
import 'package:furniture/widgets/cart_counter.dart';

class CartCounterAndAddToFavorites extends StatelessWidget {
  const CartCounterAndAddToFavorites({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CartCounter(),
        const Spacer(),
        AddToFavorites(),
      ],
    );
  }
}