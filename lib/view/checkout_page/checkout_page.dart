import 'package:flutter/material.dart';
import 'package:task1_online_store/core/constants/color_constants.dart';
import 'package:task1_online_store/view/home_screen.dart';


class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
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
          "Checkout",
          style: TextStyle(
              color: ColorConstants.primaryBlack,
              fontWeight: FontWeight.bold,
              fontSize: 18),
        ),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Material(
              elevation: 5,
              child: Stack(
                children: [
                  Container(
                    height: 150,
                    width: 400,
                    child: Row(
                      children: [
                        Image.network(
                          "https://vizagshop.com/wp-content/uploads/2020/09/Kalbavi-4-Pc-Cashew-Tukda-1-kg-1.png",
                          scale: 3,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Kalbavi splits keshew...",
                                style: TextStyle(
                                    color: ColorConstants.primaryBlack,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                            ),
                            Row(
                              children: [
                                Text("\$5",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16)),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("\$11",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                        decoration:
                                            TextDecoration.lineThrough)),
                                SizedBox(
                                  width: 3,
                                ),
                                Text("5% off",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                        color: Colors.green)),
                                SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.indeterminate_check_box,
                                  color: ColorConstants.primaryGreen,
                                ),
                                Text("1"),
                                Icon(
                                  Icons.add_box,
                                  color: ColorConstants.primaryGreen,
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Material(
              elevation: 5,
              child: Stack(
                children: [
                  Container(
                    height: 150,
                    width: 400,
                    child: Row(
                      children: [
                        Image.network(
                          "https://www.bigbasket.com/media/uploads/p/xxl/40128022_2-godrej-jersey-cow-ghee.jpg",
                          scale: 3,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Godrej jersey cow ghee",
                                style: TextStyle(
                                    color: ColorConstants.primaryBlack,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                            ),
                            Row(
                              children: [
                                Text("\$5",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16)),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("\$11",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                        decoration:
                                            TextDecoration.lineThrough)),
                                SizedBox(
                                  width: 3,
                                ),
                                Text("5% off",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                        color: Colors.green)),
                                SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.indeterminate_check_box,
                                  color: ColorConstants.primaryGreen,
                                ),
                                Text("1"),
                                Icon(
                                  Icons.add_box,
                                  color: ColorConstants.primaryGreen,
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Material(
                elevation: 5,
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    height: 160,
                    width: 370,
                    decoration: BoxDecoration(
                        color: ColorConstants.primaryWhite,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Product Details",
                            style: TextStyle(
                                color: ColorConstants.primaryBlack,
                                fontSize: 18),
                          ),
                          Divider(),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Price( 3 item)"),
                                  Text("\$16")
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [Text("Discount"), Text("-\$1",style: TextStyle(color: Colors.green),)],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Delevery charges"),
                                  Text("\$5"),
                                ],
                              ),
                              Row()
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Total Amount ",
                                style: TextStyle(
                                    color: ColorConstants.primaryBlack,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                              Text(
                                "\$21",
                                style: TextStyle(
                                    color: ColorConstants.primaryBlack,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              )
                            ],
                          )
                        ])))),
        SizedBox(
          height: 150,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 100),
                  backgroundColor: ColorConstants.primaryGreen),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ));
              },
              child: Text(
                "PROCEED TO CHECKOUT→",
                style: TextStyle(color: ColorConstants.primaryWhite),
              )),
        )
      ]),
    ));
  }
}