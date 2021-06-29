import 'package:flutter/material.dart';
import './gallery_image.dart';
import '../constants.dart';
import '../models/gallery.dart';

class GalleryImagesList extends StatelessWidget {
  final Function(int) onPressed;
  GalleryImagesList({@required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultVerticalPadding),
      decoration: BoxDecoration(
        color: kBottomSheetBgColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(kBottomSheetRadius),
          topRight: Radius.circular(kBottomSheetRadius),
        ),
      ),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => onPressed(index),
            child: GalleryImage(Gallery.getGalleries()[index]),
          );
        },
        itemCount: Gallery.getGalleries().length,
      ),
    );
  }
}
