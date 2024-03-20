import 'package:flutter/material.dart';
import 'package:task1_online_store/core/constants/color_constants.dart';
import 'package:task1_online_store/view/dummydb.dart';

class Category extends StatelessWidget {
  const Category({super.key,required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 120,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: ColorConstants.primaryGreen.withOpacity(.5),
          ),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  child: Image.network(
                    DummyDb.category[index]["categoryImage"],
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  DummyDb.category[index]["categoryName"],
                  style: TextStyle(color: ColorConstants.primaryBlack),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
