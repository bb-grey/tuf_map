import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class GradientAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: kAppBarHeight,
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            kDefaultGradeintColor1,
            kDefaultGradeintColor2,
          ],
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            kTufHeading,
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
          MaterialButton(
            onPressed: _launchSite,
            color: kAppbarButtonColor,
            elevation: 12.0,
            padding: EdgeInsets.symmetric(
              vertical: 16,
            ),
            child: Text(
              kAppbarButtonText,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _launchSite() async {
    await canLaunch('https://tuf.edu.pk/')
        ? await launch('https://tuf.edu.pk/')
        : throw 'Could not launch';
  }
}
