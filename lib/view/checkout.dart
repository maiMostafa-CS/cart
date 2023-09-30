import "package:flutter/material.dart";
import 'package:task3/util/colors.dart';
import 'package:task3/util/strings.dart';
import '../common/customAppBar.dart';
import '../model/item.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});
  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
          Icons.menu, Icons.search, ThemeColors.whiat, ThemeColors.black),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(
          height: 13,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(UiStrings.myCart,
              style: TextStyle(
                  color: ThemeColors.black,
                  fontSize: 30,
                  fontFamily: "montserrat")),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
            height: 500,
            child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: item.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Container(
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                  child: Image.asset(
                                    item[index].img,
                                    fit: BoxFit.cover,
                                    width: 200,
                                    height: 150,
                                  )),
                              const SizedBox(
                                height: 30,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    UiStrings.loremIpsum,
                                    style: TextStyle(
                                        fontSize: 20, fontFamily: "montserrat"),
                                  ),
                                  Text(UiStrings.loremIpsumDolor,
                                      style:
                                          TextStyle(color: ThemeColors.gray)),
                                  Text(
                                    UiStrings.ametCosectetuer,
                                    style: TextStyle(color: ThemeColors.gray),
                                  ),
                                  Text(
                                    "\$ ${item[index].price}",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontFamily: "montserrat",
                                        color: ThemeColors.amber),
                                  ),
                                  Row(
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            setState(() {
                                              if (item[index].counter < 1) {
                                                item[index].counter == 0;
                                              } else {
                                                item[index].counter--;
                                              }
                                            });
                                          },
                                          icon: Icon(
                                            Icons.indeterminate_check_box,
                                            color: ThemeColors.gray,
                                          )),
                                      Text(
                                        " ${item[index].counter} ",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontFamily: "montserrat",
                                            color: ThemeColors.gray),
                                      ),
                                      IconButton(
                                          onPressed: () {
                                            setState(() {
                                              item[index].counter++;
                                            });
                                          },
                                          icon: Icon(
                                            Icons.add_box,
                                            color: ThemeColors.gray,
                                          )),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          )),
                      const SizedBox(
                        height: 20,
                      )
                    ],
                  );
                })),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 181,
          width: double.infinity,
          color: ThemeColors.green,
          child: Column(children: [
            Container(
              padding: const EdgeInsets.fromLTRB(40, 20, 60, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    UiStrings.totalPrice,
                    style: TextStyle(
                        fontFamily: "montserrat",
                        fontSize: 20,
                        color: ThemeColors.whiat),
                  ),
                  Text(
                    "\$ 100",
                    style: TextStyle(
                        fontFamily: "montserrat",
                        fontSize: 20,
                        color: ThemeColors.whiat),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(ThemeColors.amber),
                padding: MaterialStateProperty.all(
                    const EdgeInsets.fromLTRB(50, 15, 50, 15)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30))),
              ),
              child: const Text(
                UiStrings.checkOut,
                style: TextStyle(fontSize: 19),
              ),
            ),
          ]),
        )
      ]),
    );
  }
}
