import 'package:flutter/material.dart';
import 'package:task1_online_store/core/constants/color_constants.dart';
import 'package:task1_online_store/view/dummydb.dart';

class BestSeller extends StatelessWidget {
  const BestSeller({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 10,
          ),
          height: 230,
          width: 160,
          decoration: BoxDecoration(
              color: ColorConstants.primaryGrey.withOpacity(.1),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Image.network(
                DummyDb.bestSeller[index]["bestSellerImage"],
                scale: 5,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: List.generate(
                    DummyDb.bestSeller[index]["starCount"],
                    (index) => Padding(
                        padding: const EdgeInsets.all(1),
                        child: Icon(
                          Icons.star,
                          size: 12,
                          color: Colors.amber,
                        ))),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                DummyDb.bestSeller[index]["bestSellerName"],
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              Row(
                children: [
                  Text(DummyDb.bestSeller[index]["price"],
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  SizedBox(
                    width: 5,
                  ),
                  Text(DummyDb.bestSeller[index]["discount"],
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          decoration: TextDecoration.lineThrough)),
                  SizedBox(
                    width: 3,
                  ),
                  Text(DummyDb.bestSeller[index]["offer"],
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
        Positioned(
            bottom: 20,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(1),
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Icon(
                Icons.shopping_cart,
                size: 18,
                color: Colors.white,
              ),
            )),
        Positioned(
            top: 0,
            right: 0,
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_border,
                  color: ColorConstants.primaryGreen,
                ))),
      ],
    );
  }
}
