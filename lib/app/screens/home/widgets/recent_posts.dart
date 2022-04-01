import 'package:flutter/material.dart';

import 'side_bar_container.dart';
import 'recent_post_card.dart';

class RecentPosts extends StatelessWidget {
  const RecentPosts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SideBarContainer(
      title: 'Recent Posts',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          RecentPostCard(
            title: 'Our Secret Formula to Online Workshops',
            image: 'assets/images/recent_1.png',
            onPressed: () {},
          ),
          RecentPostCard(
            title: 'Digital Product Inventions from Warsaw with Love',
            image: 'assets/images/recent_2.png',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
