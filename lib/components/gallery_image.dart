import 'package:flutter/material.dart';
import '../models/gallery.dart';
import '../constants.dart';

class GalleryImage extends StatelessWidget {
  final Gallery gallery;
  GalleryImage(this.gallery);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultVerticalPadding / 2),
      decoration: BoxDecoration(
        color: kBottomSheetBgColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(kBottomSheetRadius),
          topRight: Radius.circular(kBottomSheetRadius),
        ),
      ),
      child: Container(
        height: 170.0,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(
              gallery.imageAddress,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: kDefaultHorizontalPadding,
              vertical: kDefaultVerticalPadding / 2.0,
            ),
            child: Text(
              gallery.title,
              style: TextStyle(
                color: Colors.white,
                fontSize: kHeadingFontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
