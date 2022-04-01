import 'package:flutter/material.dart';

import '../../../constants/values.dart';

class RecentPostCard extends StatelessWidget {
  final String title;
  final String image;
  final VoidCallback onPressed;

  const RecentPostCard({
    Key? key,
    required this.title,
    required this.image,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          child: Row(
            children: <Widget>[
              Expanded(
                child: Image.asset(image),
              ),
              const SizedBox(width: kDefaultPadding),
              Expanded(
                flex: 5,
                child: Text(
                  title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: kDarkBlackColor,
                    fontWeight: FontWeight.bold,
                    height: 1.3,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
