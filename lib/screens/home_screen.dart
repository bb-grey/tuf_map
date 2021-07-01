import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:panorama/panorama.dart';
import 'package:tuf_map/constants.dart';
import 'package:tuf_map/models/gallery.dart';
import 'package:tuf_map/models/site_image.dart';
import 'package:url_launcher/url_launcher.dart';
import '../components/gradient_appbar.dart';
import '../components/gallery_image_list.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "/home";
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentImageNumber = 0;
  int _currentGalleryNumber = 0;
  SiteImage _currentImage = SiteImage.getSiteImages()[0];
  Container _bgImageContainer;

  List<SiteImage> _getCurrentGalleryImages() {
    return SiteImage.getSiteImages()
        .where((element) => element.galleryIndex == _currentGalleryNumber)
        .toList();
  }

  void _changeCurrentImage() {
    _currentImage = _getCurrentGalleryImages().elementAt(_currentImageNumber);
  }

  void _incrementImage() {
    if (_currentImageNumber < _getCurrentGalleryImages().length - 1) {
      setState(() {
        _currentImageNumber++;
        _changeCurrentImage();
        _bgImageContainer = Container(
          key: UniqueKey(),
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            _currentImage.imageAddress,
            fit: BoxFit.cover,
          ),
        );
      });
    }
  }

  void _decrementImage() {
    if (_currentImageNumber > 0) {
      setState(() {
        _currentImageNumber--;
        _changeCurrentImage();
        _bgImageContainer = Container(
          key: UniqueKey(),
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            _currentImage.imageAddress,
            fit: BoxFit.cover,
          ),
        );
      });
    }
  }

  void _incrementGallery() {
    if (_currentGalleryNumber < Gallery.getGalleries().length - 1) {
      setState(() {
        _changeGallery(_currentGalleryNumber + 1);
      });
    }
  }

  void _changeGallery(int galleryNumber) {
    _currentImageNumber = 0;
    _currentGalleryNumber = galleryNumber;
    _changeCurrentImage();
  }

  String _getNextImageDirectionIcon() {
    String direction = 'assets/icons/icon_up.png';
    if (_currentImage.nextImageDirection == Direction.Forward) {
      direction = 'assets/icons/icon_up.png';
    } else if (_currentImage.nextImageDirection == Direction.Left) {
      direction = 'assets/icons/icon_left.png';
    } else if (_currentImage.nextImageDirection == Direction.Right) {
      direction = 'assets/icons/icon_right.png';
    }
    return direction;
  }

  @override
  Widget build(BuildContext context) {
    _bgImageContainer = Container(
      key: UniqueKey(),
      width: double.infinity,
      height: double.infinity,
      child: Image.asset(
        _currentImage.imageAddress,
        // fit: BoxFit.cover,
      ),
    );
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/images/blur.jpg'),
            // fit: BoxFit.contain,
            fit: BoxFit.fitHeight,
          )),
          child: Stack(
            children: [
              AnimatedSwitcher(
                duration: Duration(milliseconds: 500),
                child: _bgImageContainer,
              ),
              GradientAppBar(),
              Positioned(
                child: Text(
                  _getCurrentGalleryImages()
                      .elementAt(_currentImageNumber)
                      .title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                top: 100,
                left: 10,
              ),
              Positioned(
                bottom: 120,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      child: Center(
                        child: InkWell(
                          onTap: _incrementImage,
                          child: (_currentImageNumber <
                                  _getCurrentGalleryImages().length - 1)
                              ? Image.asset(
                                  _getNextImageDirectionIcon(),
                                  width: 60.0,
                                )
                              : Container(),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: _currentImageNumber > 0
                          ? Center(
                              child: InkWell(
                                onTap: _decrementImage,
                                child: Image.asset(
                                  'assets/icons/icon_bottom.png',
                                  width: 60.0,
                                ),
                              ),
                            )
                          : Text(''),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 120.0,
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                        kDefaultGradeintColor2,
                        kDefaultGradeintColor1,
                      ],
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return GalleryImagesList(
                                  onPressed: (index) {
                                    Navigator.pop(context);
                                    setState(() {
                                      _changeGallery(index);
                                    });
                                  },
                                );
                              },
                            );
                          },
                          child: Text(
                            '${Gallery.getGalleries().elementAt(_currentGalleryNumber).title} ↓',
                            style: TextStyle(
                              fontSize: 26.0,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20.0),
                      Container(
                        width: 36.0,
                        height: 36.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 1.0),
                        ),
                        child: InkWell(
                          onTap: _incrementGallery,
                          child: Icon(
                            Icons.arrow_right_alt,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: EdgeInsets.only(right: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      FadedButton(
                        onTap: _launchSite,
                        icon: FontAwesomeIcons.mapMarkedAlt,
                      ),
                      SizedBox(height: 8.0),
                      FadedButton(
                        onTap: () {
                          if (_currentImage.image360 != null) {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return Dialog(
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.7,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                    ),
                                    child: Panorama(
                                      child: Image.asset(
                                        _currentImage.image360,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          }
                        },
                        icon: FontAwesomeIcons.glasses,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _launchSite() async {
    await canLaunch(
            'https://www.google.com/maps/search/the+university+of+faisalabad/@31.4523527,73.1366853,13z?hl=en')
        ? await launch(
            'https://www.google.com/maps/search/the+university+of+faisalabad/@31.4523527,73.1366853,13z?hl=en')
        : throw 'Could not launch';
  }
}

class FadedButton extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;
  FadedButton({this.onTap, this.icon});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 70.0,
        height: 70.0,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.6),
          borderRadius: BorderRadius.circular(70.0),
        ),
        child: Icon(
          this.icon,
          size: 32,
          color: Colors.white,
        ),
      ),
    );
  }
}
