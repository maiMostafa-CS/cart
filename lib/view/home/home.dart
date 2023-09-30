import "package:flutter/material.dart";
import "package:task3/common/customAppBar.dart";
import 'package:task3/model/item.dart';
import 'package:task3/util/colors.dart';
import 'package:task3/view/home/explore.dart';
import 'package:task3/view/home/listCart.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar(
            Icons.menu, Icons.search, ThemeColors.green, ThemeColors.whiat),
        body: Column(children: [
          explore(item),
          Row(
            children: [
              Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    onPressed: () {},
                    highlightColor: ThemeColors.amber,
                    child: Text(
                      "Chairs",
                      style: TextStyle(
                          color: ThemeColors.gray, fontFamily: "montserrat"),
                    ),
                  )),
              Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    onPressed: () {},
                    highlightColor: ThemeColors.amber,
                    child: Text(
                      "Sofa",
                      style: TextStyle(
                          color: ThemeColors.gray, fontFamily: "montserrat"),
                    ),
                  )),
              Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    onPressed: () {},
                    highlightColor: ThemeColors.amber,
                    child: Text(
                      "Table",
                      style: TextStyle(
                          color: ThemeColors.gray, fontFamily: "montserrat"),
                    ),
                  ))
            ],
          ),
          listCart(),
        ]));
  }
}

//




     
      
 
 

