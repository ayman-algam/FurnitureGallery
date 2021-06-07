import 'package:flutter/material.dart';
import 'package:furniture/widgets/color_dot.dart';

import '../../../constants.dart';

class ListOfColors extends StatelessWidget {
  const ListOfColors({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
           const ColorDot(
            color: Color(0xFF80989A),
            isSelected: true,
          ),
          const ColorDot(
            color:  kPrimaryColor,
          ),

          const ColorDot(
            color:  Color(0xFFFF5200),
          )

        ],
      ),
    );
  }
}