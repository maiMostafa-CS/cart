// ignore: file_names
import 'package:flutter/material.dart';
import 'package:task3/util/strings.dart';
import '../../util/colors.dart';

Widget explore(item) {
  return Container(
      color: ThemeColors.green,
      width: double.infinity,
      height: 260,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            UiStrings.explore,
            style: TextStyle(
              fontFamily: "montserrat",
              fontSize: 25,
              color: ThemeColors.whiat,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
              height: 200,
              width: double.infinity,
              child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  scrollDirection: Axis.horizontal,
                  itemCount: item.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      width: 150,
                      height: 200,
                      padding: const EdgeInsets.fromLTRB(5, 0, 10, 0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            item[index].img,
                            fit: BoxFit.cover,
                            width: 210,
                            height: 200,
                          )),
                    );
                  })),
        ],
      ));
}
