import 'package:flutter/material.dart';
import 'package:preload_page_view/preload_page_view.dart';
import 'package:tuf_map/components/splash.dart';

class SplashScreen extends StatefulWidget {
  final Function(int) onPageChanged;
  final int pageNumber;
  final PreloadPageController pageController;
  SplashScreen({this.onPageChanged, this.pageNumber, this.pageController});
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  List<Widget> pages = [
    Splash(
      image: Image.asset('assets/images/splash/splash1.PNG'),
      title: 'Welcome To TUF',
      description: 'A very well known university in town',
    ),
    Splash(
      image: Image.asset('assets/images/splash/splash2.jpeg'),
      title: 'Virtual Tour',
      description:
          'Take a look at its structure and visit it virtually on your mobile or browser',
    ),
    Splash(
      image: Image.asset('assets/images/splash/splash3.jpeg'),
      title: '360 View',
      description: '360 view for different images to represent as reality',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return PreloadPageView.builder(
      itemBuilder: (context, position) {
        return pages[position];
      },
      itemCount: pages.length,
      preloadPagesCount: pages.length,
      scrollDirection: Axis.horizontal,
      onPageChanged: widget.onPageChanged,
      controller: widget.pageController,
    );
  }
}
