import 'package:flutter/material.dart';

import '../../constants/values.dart';
import '../../helpers/responsive.dart';
import '../../models/post.dart';

import 'widgets/blog_post_card.dart';
import 'widgets/categories.dart';
import 'widgets/recent_posts.dart';
import 'widgets/search.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Container(
            child: Column(
              children: <Widget>[
                ...blogPosts.map((post) => BlogPostCard(post: post)).toList(),
              ],
            ),
          ),
        ),
        if (!Responsive.isMobile(context))
          const SizedBox(width: kDefaultPadding),
        if (!Responsive.isMobile(context))
          Expanded(
            child: Column(
              children: const <Widget>[
                Search(),
                SizedBox(height: kDefaultPadding),
                Categories(),
                SizedBox(height: kDefaultPadding),
                RecentPosts(),
              ],
            ),
          ),
      ],
    );
  }
}
