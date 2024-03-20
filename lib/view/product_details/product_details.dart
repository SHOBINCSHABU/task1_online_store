import 'package:flutter/material.dart';
import 'package:task1_online_store/core/constants/color_constants.dart';
import 'package:task1_online_store/view/dummydb.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key,  required this.index});

  // final productDetails;
  final int index;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 5,
          backgroundColor: ColorConstants.primaryWhite,
          surfaceTintColor: ColorConstants.primaryWhite,
          centerTitle: true,
          title: Text(
            "Poduct Details",
            style: TextStyle(
                color: ColorConstants.primaryBlack,
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Material(
                elevation: 5,
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      height: 250,
                      width: 370,
                      decoration: BoxDecoration(
                          color: ColorConstants.primaryWhite,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 120),
                            child: Image.network(
                              DummyDb.productDetails[index]["productImage"],
                              scale: 1,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                              DummyDb.productDetails[index]["productName"],
                                  style: TextStyle(
                                      color: ColorConstants.primaryBlack,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: ColorConstants.primaryGreen),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                              DummyDb.productDetails[index]["review"],
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: ColorConstants
                                                    .primaryWhite),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 15,
                                            color: ColorConstants.primaryWhite,
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                              DummyDb.productDetails[index]["productRating"],
                                      style: TextStyle(
                                          color: ColorConstants.primaryBlack
                                              .withOpacity(.4),
                                          fontSize: 12),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text(
                              DummyDb.productDetails[index]["productPrice"],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16)),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                              DummyDb.productDetails[index]["productDiscount"],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            decoration:
                                                TextDecoration.lineThrough)),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                              DummyDb.productDetails[index]["productOffer"],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10,
                                            color: Colors.green)),
                                    SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                        top: 10,
                        right: 10,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color:
                                  ColorConstants.primaryGreen.withOpacity(.1)),
                          child: Icon(
                            Icons.redo,
                            color: ColorConstants.primaryGreen,
                          ),
                        )),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Material(
                elevation: 5,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  height: 300,
                  width: 370,
                  decoration: BoxDecoration(
                      color: ColorConstants.primaryWhite,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Details",
                        style: TextStyle(
                            color: ColorConstants.primaryBlack, fontSize: 18),
                      ),
                      Divider(),
                      ListView.separated(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) => Row(
                                children: [
                                  Text(
                              DummyDb.productDetails[index]["brandName"],
                                    style: TextStyle(
                                        color: ColorConstants.primaryBlack
                                            .withOpacity(.4)),
                                  ),
                                  SizedBox(
                                    width: 70,
                                  ),
                                  // Text(
                                  //   productDetails.brand[index],
                                  //   style: TextStyle(
                                  //       color: ColorConstants.primaryBlack,
                                  //       fontWeight: FontWeight.bold),
                                  // ),
                                ],
                              ),
                          separatorBuilder: (context, index) => SizedBox(
                                height: 15,
                              ),
                          itemCount: productDetails.brand.length),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Spacer(),
                          Text(
                            "More Details",
                            style:
                                TextStyle(color: ColorConstants.primaryGreen),
                          ),
                        ],
                      )
                  ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Material(
              elevation: 5,
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                    color: ColorConstants.primaryWhite,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:
                                ColorConstants.primaryGreen.withOpacity(.18)),
                        child: Icon(
                          Icons.favorite_border,
                          color: ColorConstants.primaryGreen,
                        ),
                      ),
                      Spacer(),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(horizontal: 100),
                              backgroundColor: ColorConstants.primaryGreen),
                          onPressed: () {},
                          child: Text(
                            "ADD TO CART",
                            style:
                                TextStyle(color: ColorConstants.primaryWhite),
                          ))
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}