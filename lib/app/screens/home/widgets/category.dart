import 'package:flutter/material.dart';

import '../../../constants/values.dart';

class Category extends StatelessWidget {
  final String title;
  final int numOfItems;
  final VoidCallback onPressed;

  const Category({
    Key? key,
    required this.title,
    required this.numOfItems,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
      child: TextButton(
        onPressed: onPressed,
        child: Text.rich(
          TextSpan(
            text: title,
            style: const TextStyle(color: kDarkBlackColor),
            children: [
              TextSpan(
                text: ' ($numOfItems)',
                style: const TextStyle(
                  color: kBodyTextColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
