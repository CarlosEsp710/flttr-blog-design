import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

import '../../../constants/values.dart';
import '../../../models/post.dart';

class BlogPostCard extends StatelessWidget {
  final Post post;

  const BlogPostCard({
    Key? key,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding),
      child: Column(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 1.78,
            child: Image.asset(post.image),
          ),
          Container(
            padding: const EdgeInsets.all(kDefaultPadding),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      'Design'.toUpperCase(),
                      style: const TextStyle(
                        color: kDarkBlackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(width: kDefaultPadding),
                    Text(
                      post.date,
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: kDefaultPadding),
                  child: Text(
                    post.title,
                    style: const TextStyle(
                      fontSize: 32,
                      color: kDarkBlackColor,
                      height: 1.3,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Text(
                  post.description,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 16,
                    color: kDarkBlackColor,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: kDefaultPadding),
                Row(
                  children: <Widget>[
                    TextButton(
                      onPressed: () {},
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: kPrimaryColor,
                            ),
                          ),
                        ),
                        child: const Text(
                          'Read more',
                          style: TextStyle(
                            color: kDarkBlackColor,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'assets/icons/feather_thumbs-up.svg',
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'assets/icons/feather_message-square.svg',
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'assets/icons/feather_share-2.svg',
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
