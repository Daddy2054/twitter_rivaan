import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:twitter/features/explore/view/explore_view.dart';
import 'package:twitter/features/tweet/widgets/tweet_list.dart';

import '../theme/pallete.dart';
import 'assets_constants.dart';

class UIConstants {
  static AppBar appBar() {
    return AppBar(
      title: SvgPicture.asset(
        AssetsConstants.twitterLogo,
        color: Pallete.blueColor,
        height: 30,
      ),
      centerTitle: true,
    );
  }

  static const List<Widget> bottomTabBarPages = [
    TweetList(),
    ExploreView(),
    Text('notification Screen'),
    //   TweetList(),
    //   ExploreView(),
    //   NotificationView(),
  ];
}
