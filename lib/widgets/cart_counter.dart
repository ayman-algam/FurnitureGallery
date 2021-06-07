import 'package:flutter/material.dart';

import '../constants.dart';

class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numberOfItems = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding/2),
      child: Row(
        children: [
          buildOutLineButton(
              iconData: Icons.remove,
              onPress: () {
                if (numberOfItems > 1) {
                  setState(() {
                    numberOfItems--;
                  });
                }
              }),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text(
              numberOfItems.toString().padLeft(2, "0"),
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          buildOutLineButton(
              iconData: Icons.add,
              onPress: () {
                setState(() {
                  numberOfItems++;
                });
              }),
        ],
      ),
    );
  }

  SizedBox buildOutLineButton({
    required IconData iconData,
    required Function() onPress,
  }) {
    return SizedBox(
      width: 50,
      height: 32,
      // ignore: deprecated_member_use
      child: OutlineButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13),
        ),
        onPressed: onPress,
        padding: EdgeInsets.zero,
        child: Icon(iconData),
      ),
    );
  }
}