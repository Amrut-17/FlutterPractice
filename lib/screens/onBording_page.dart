import 'package:flutter/material.dart';
import 'package:flutter_dev_practice/screens/page_1.dart';
import 'package:flutter_dev_practice/screens/page_2.dart';
import 'package:flutter_dev_practice/screens/page_3.dart';
import 'package:flutter_dev_practice/screens/page_4.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingPage extends StatelessWidget {
  // make variable to control page
  PageController _controller = PageController();

  // track pages
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 3);
            });
          },
          children: [
            PageOne(),
            PageTwo(),
            PageThree(),
            PageFour(),
          ],
        ),

        // smooth_page_indicator package
        Container(
          alignment: Alignment(0, 0.9), // range is in between -1 to +1
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // SKIP button
              GestureDetector(
                onTap: () {
                  _controller.jumpToPage(3);
                },
                child: Text("Skip"),
              ),

              //DOTS
              SmoothPageIndicator(controller: _controller, count: 4),

              // END OR NEXT
              onLastPage
                  ? GestureDetector(
                      onTap: () {
                        _controller.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeInCubic,
                        );
                      },
                      child: Text("Done"),
                    )
                  : GestureDetector(
                      onTap: () {
                        _controller.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeInCubic,
                        );
                      },
                      child: Text("Next"),
                    ),
            ],
          ),
        ),
      ],
    ));
  }
}

void setState(Null Function() param0) {}
