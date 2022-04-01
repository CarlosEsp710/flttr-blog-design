import 'package:flutter/material.dart';

import '../../constants/values.dart';
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
        const SizedBox(width: kDefaultPadding),
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
