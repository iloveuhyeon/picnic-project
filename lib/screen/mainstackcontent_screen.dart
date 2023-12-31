import 'package:flutter/material.dart';
import 'package:picnic_news_my/screen/appbar_screen.dart';
import 'package:picnic_news_my/test.dart';

Stack MainStackContent(BuildContext context) {
  return Stack(
    children: [
      GestureDetector(
        onTap: () {
          print("hello world");
        },
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Image.asset('asset/ex1.jpg'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "생존경쟁 불붙은 OTT…국내외 예외없다",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: mediaHeight(context, 0.01),
                  ),
                  const Text(
                    "온라인동영상서비스(OTT) 플랫폼의 생존경쟁에 불이 붙었다. 시장이 빠르게 포화상태에...",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      circleIcon(1),
                      circleIcon(2),
                      circleIcon(3),
                      circleIcon(4),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget circleIcon(int onoff) {
  double circlesize = 11.0;
  Color circlecolor = Colors.white.withOpacity(0.6);

  return IconButton(
    constraints: const BoxConstraints(),
    padding: EdgeInsets.zero,
    splashRadius: 1,
    onPressed: () {
      Test.test1[onoff] = !Test.test1[onoff]!;
      Test.test1[onoff]! ? print("object") : print("no");
    },
    icon: Icon(
      Test.test1[onoff]! ? Icons.circle : Icons.circle_outlined,
      color: circlecolor,
      size: circlesize,
    ),
  );
}
