import 'package:flutter/material.dart';
import 'package:task3/common/star.dart';
import 'package:task3/model/item.dart';
import 'package:task3/util/colors.dart';
import 'package:task3/util/strings.dart';
import 'package:task3/view/cart/cart.dart';

Widget listCart() {
  return SizedBox(
      height: 450,
      child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: item.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Cart(product: item[index]),
                  ),
                );
              },
              child: Column(
                children: [
                  Container(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                UiStrings.loremIpsum,
                                style: TextStyle(
                                    fontSize: 20, fontFamily: "montserrat"),
                              ),
                              Text(UiStrings.loremIpsumDolor,
                                  style: TextStyle(color: ThemeColors.gray)),
                              Text(
                                UiStrings.ametCosectetuer,
                                style: TextStyle(color: ThemeColors.gray),
                              ),
                              Text(
                                "\$ ${item[index].price}",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontFamily: "montserrat",
                                    color: ThemeColors.black),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  star(),
                                  star(),
                                  star(),
                                  star(),
                                  blackStar(),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "4.8",
                                    style: TextStyle(
                                        fontFamily: "montserrat",
                                        color: ThemeColors.gray),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ElevatedButton(
                                      onPressed: () {},
                                      style: ButtonStyle(
                                        padding: MaterialStateProperty.all(
                                            const EdgeInsets.fromLTRB(
                                                20, 0, 20, 0)),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                ThemeColors.green),
                                        shape: MaterialStateProperty.all(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(50))),
                                      ),
                                      child: Text(
                                        "Add",
                                        style: TextStyle(
                                            color: ThemeColors.whiat,
                                            fontFamily: "montserrat",
                                            fontSize: 12),
                                      )),
                                  const SizedBox(
                                    width:40,
                                  ),
                                  Icon(
                                    Icons.favorite,
                                    color: ThemeColors.gray,
                                    size: 32,
                                  )
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  bottomLeft: Radius.circular(30)),
                              child: Image.asset(
                                item[index].img,
                                fit: BoxFit.cover,
                                width: 209,
                                height: 200,
                              ))
                        ],
                      )),
          const SizedBox(height: 20,)
                ],
              ),
            ); //  child: GridTile(
          }));
}
