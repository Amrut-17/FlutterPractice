import 'package:flutter/material.dart';
import 'package:flutter_dev_practice/widgets/app_large_text.dart';
import 'package:flutter_dev_practice/widgets/app_text.dart';
import 'package:flutter_dev_practice/widgets/responsive_button.dart';

import '../misc/colors.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "welcome-one.png",
    "welcome-two.png",
    "welcome-three.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Container(
            // CODE FOR BACKGROUND IMAGE START
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/" + images[index]),
                fit: BoxFit.cover,
              ),
            ),
            // CODE FOR BACKGROUND IMAGE END
            child: Container(
              // color: Colors.black,
              margin: const EdgeInsets.only(top: 120, left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(text: "Trips"),
                      AppText(text: "Mountain", size: 30),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 250,
                        // color: Colors.yellow,
                        child: AppText(
                          text:
                              "Mountain hikes give you an incredible sense of freedom along withendurance tests",
                          color: AppColors.textColor2,
                          size: 16,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      ResponsiveButton(
                        width: 120,
                      ),
                    ],
                  ),

                  // 2nd Column start
                  Column(
                    children: List.generate(3, (indexDots) {
                      return Container(
                        width: 8,
                        margin: const EdgeInsets.only(bottom: 2),
                        height: index == indexDots ? 25 : 8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: index == indexDots
                              ? AppColors.mainColor
                              : AppColors.mainColor.withOpacity(0.3),
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
