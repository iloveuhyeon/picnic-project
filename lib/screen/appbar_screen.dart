import 'package:flutter/material.dart';
import 'package:picnic_news_my/screen/splash_screen.dart';

double mediaHeight(BuildContext context, double height) =>
    MediaQuery.of(context).size.height * height;

double mediaWidth(BuildContext context, double width) =>
    MediaQuery.of(context).size.height * width;
AppBar appbar(BuildContext context) {
  return AppBar(
    centerTitle: true,
    elevation: 0,
    backgroundColor: Colors.white,
    title: GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        ),
      ),
      child: Image.asset(
        'asset/logo.jpg',
        height: mediaHeight(context, 0.05),
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 10),
        child: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
          color: const Color(0xff0047ff),
          iconSize: mediaHeight(context, 0.04),
          splashRadius: 25,
        ),
      ),
    ],
  );
}
