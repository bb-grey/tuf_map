import 'package:flutter/material.dart';
import 'package:preload_page_view/preload_page_view.dart';
import 'package:tuf_map/components/page_number_representer.dart';
import 'package:tuf_map/components/splash_button.dart';
import 'package:tuf_map/screens/home_screen.dart';
import 'package:tuf_map/screens/splash_screen.dart';

class SplashScreenLayout extends StatefulWidget {
  @override
  _SplashScreenLayoutState createState() => _SplashScreenLayoutState();
}

class _SplashScreenLayoutState extends State<SplashScreenLayout> {
  int _currentPage = 0;
  PreloadPageController _pageController = PreloadPageController();

  void initState() {
    super.initState();
    _pageController = PreloadPageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 6,
              child: SplashScreen(
                pageNumber: _currentPage,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                pageController: _pageController,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PageNumberRepresenter(
                    currentPage: _currentPage,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 32 / 2.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SplashButton(
                          title: 'SKIP',
                          onClick: () {
                            Navigator.pushReplacementNamed(
                              context,
                              HomeScreen.routeName,
                            );
                          },
                          color: Colors.grey[600],
                        ),
                        SplashButton(
                          title: 'NEXT',
                          onClick: () {
                            setState(() {
                              _currentPage++;
                              _pageController.animateToPage(
                                _currentPage,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.linear,
                              );
                            });
                          },
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
