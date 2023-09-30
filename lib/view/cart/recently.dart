import 'package:flutter/material.dart';
import 'package:task3/model/item.dart';
import 'package:task3/util/colors.dart';
import 'package:task3/util/strings.dart';

Widget recently() {
  return Container(
    color: ThemeColors.green,
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    height: 249,
    width: double.infinity,
    child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            UiStrings.recentView,
            style: TextStyle(
                color: ThemeColors.whiat,
                fontSize: 20,
                fontFamily: "montserrat"),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
              height: 190,
              width: double.infinity,
              child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  scrollDirection: Axis.horizontal,
                  itemCount: item.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage(
                                  item[index].img,
                                ),
                                fit: BoxFit.cover)),
                        height: 150,
                        width: 200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    color: ThemeColors.shadow,
                                    borderRadius:
                                        const BorderRadiusDirectional.vertical(
                                            bottom: Radius.circular(20))),
                                width: double.infinity,
                                height: 50,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      UiStrings.loremIpsum,
                                      style: TextStyle(
                                          fontFamily: "montserrat",
                                          fontSize: 15,
                                          color: ThemeColors.whiat),
                                    ),
                                    Text(
                                      UiStrings.loremDolorIsAmet,
                                      style:
                                          TextStyle(color: ThemeColors.whiat),
                                    )
                                  ],
                                ))
                          ],
                        ));
                  })),
        ]),
  );
}
