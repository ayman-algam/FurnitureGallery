import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'c01_01_search_box.dart';
import 'c01_02_category_list.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchBox(
          onChange: (value) {},
        ),
        CategoryList(),
        const SizedBox(
          height: kDefaultPadding / 2,
        ),
        Expanded(
          child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 70),
                decoration: const BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
              ),
              ProductCard()
            ],
          ),
        )
      ],
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      margin: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      //color: Colors.blueAccent,
      child: Stack(
        
        alignment: Alignment.bottomCenter,
        children: [
          // Its is our background
          Container(
            height: 136,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: kBlueColor,
              boxShadow: const [kDefaultShadow],
            ),
            child: Container(
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.white
              ),
            ),
          ),
          // Product Image
          Positioned(
            top: 0,
            right: 0,
            child: Container(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding,),
            height: 160,
            width: 200,
            child: Image.asset("assets/images/chair_1.png", fit: BoxFit.cover,),
          ),),
        ],
      ),
    );
  }
}