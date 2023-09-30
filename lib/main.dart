import "package:flutter/material.dart";
import 'package:task3/view/home/home.dart';
import 'package:task3/view/checkout.dart';
import 'package:task3/view/cart/cart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        "/cart": (context) => Cart(),
        "/checkout": (context) => const Checkout(),
      },
    );
  }
}
