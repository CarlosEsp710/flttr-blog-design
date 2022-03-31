import 'package:flutter/material.dart';

import '../../constants/values.dart';
import '../../models/post.dart';

import 'widgets/blog_post_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
          child: Container(
            height: 400,
            color: Colors.blueGrey,
          ),
        ),
      ],
    );
  }
}
