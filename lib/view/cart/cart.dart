import "package:flutter/material.dart";
import 'package:task3/common/star.dart';
import 'package:task3/util/colors.dart';
import 'package:task3/util/strings.dart';
import 'package:task3/view/cart/recently.dart';
import '../../common/customAppBar.dart';
import '../../model/item.dart';

// ignore: must_be_immutable
class Cart extends StatefulWidget {
  Item? product;
  Cart({super.key, this.product});
  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(Icons.arrow_back_ios_new_outlined, Icons.favorite,
          ThemeColors.whiat, ThemeColors.black),
      body: Column(
        children: [
          Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              height: 200,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(13),
                  child: Image.asset(
                    widget.product?.img ?? "",
                    fit: BoxFit.cover,
                  ))),
          const SizedBox(
            height: 0,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      UiStrings.loremIpsum,
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: "montserrat",
                          color: ThemeColors.black),
                    ),
                    Text(
                      "\$ ${widget.product?.price}",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: "montserrat",
                          color: ThemeColors.amber),
                    )
                  ],
                ),
                Text(UiStrings.loremIpsumDolor,
                    style: TextStyle(color: ThemeColors.gray)),
                Text(
                  UiStrings.ametCosectetuer,
                  style: TextStyle(color: ThemeColors.gray),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    star(),
                    star(),
                    star(),
                    star(),
                    blackStar(),
                    const SizedBox(height: 20, width: 20),
                    const Text("4.8")
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      UiStrings.color,
                      style: TextStyle(
                          fontFamily: "montserrat",
                          fontSize: 20,
                          color: ThemeColors.black),
                    ),
                    const SizedBox(
                      width: 70,
                    ),
                    const Icon(
                      Icons.circle,
                      color: Color.fromRGBO(79, 82, 88, 1),
                      size: 35,
                    ),
                    const Icon(
                      Icons.circle,
                      color: Color.fromARGB(223, 87, 74, 41),
                      size: 35,
                    ),
                    const Icon(
                      Icons.circle,
                      color: Color.fromARGB(180, 26, 43, 75),
                      size: 35,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      UiStrings.quanity,
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: "montserrat",
                          color: ThemeColors.black),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            if (count < 1) {
                              count == 0;
                            } else {
                              count--;
                            }
                          });
                        },
                        icon: Icon(
                          Icons.indeterminate_check_box,
                          color: ThemeColors.amber,
                        )),
                    Text(
                      " $count ",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: "montserrat",
                          color: ThemeColors.gray),
                    ),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            count++;
                          });
                        },
                        icon: Icon(
                          Icons.add_box,
                          color: ThemeColors.amber,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 17,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/checkout");
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(ThemeColors.amber),
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 15)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                    ),
                    child: Text(
                      UiStrings.addToCarg,
                      style: TextStyle(
                          fontSize: 19,
                          color: ThemeColors.whiat,
                          fontFamily: "montserrat"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          recently(),
        ],
      ),
    );
  }
}
