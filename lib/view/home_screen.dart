import 'package:flutter/material.dart';
import 'package:task1_online_store/core/constants/color_constants.dart';
import 'package:task1_online_store/view/best_seller/best_seller.dart';
import 'package:task1_online_store/view/category/category.dart';
import 'package:task1_online_store/view/dummydb.dart';
import 'package:task1_online_store/view/product_details/product_details.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.primaryGreen,
        leading: Icon(Icons.sort, color: ColorConstants.primaryWhite,),
        title: TextButton(
            onPressed: () {},
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                prefixIconConstraints: BoxConstraints(minWidth: 30),
                prefixIcon: Icon(
                  Icons.search,
                  size: 20,
                ),
                isDense: true,
                fillColor: ColorConstants.primaryWhite,
                filled: true,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
              ),
            )),
      ),
      body: SingleChildScrollView(
        child: ListView(
          shrinkWrap: true,
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  height: 200,
                  width: 450,
                  child: Image.network(
                      "https://www.hsph.harvard.edu/nutritionsource/wp-content/uploads/sites/30/2012/09/vegetables-and-fruits-farmers-market.jpg"),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "category",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "view all",
                    style: TextStyle(color: ColorConstants.primaryGreen),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 120,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) => Category(
                          index: index,
                        ),
                    separatorBuilder: (context, index) => SizedBox(
                          width: 15,
                        ),
                    itemCount: DummyDb.category.length),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Best Seller",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "view all",
                    style: TextStyle(color: ColorConstants.primaryGreen),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 230,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) =>
                        InkWell(
                          onTap:() {
                          Navigator.push(
                            context, 
                            MaterialPageRoute(
                              builder: (context) => ProductPage(),
                              ));
                        },
                          child: BestSeller(
                            index: index,
                          ),
                        ),
                    separatorBuilder: (context, index) => SizedBox(
                          width: 15,
                        ),
                    itemCount: DummyDb.bestSeller.length),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Featured Deals",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "view all",
                    style: TextStyle(color: ColorConstants.primaryGreen),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
