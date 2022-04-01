import 'package:flutter/material.dart';

import 'category.dart';
import 'side_bar_container.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SideBarContainer(
      title: 'Categories',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Category(
            title: 'Artificial Intelligence',
            numOfItems: 3,
            onPressed: () {},
          ),
          Category(
            title: 'Augmented Reality',
            numOfItems: 4,
            onPressed: () {},
          ),
          Category(
            title: 'Flutter UI',
            numOfItems: 18,
            onPressed: () {},
          ),
          Category(
            title: 'Technology',
            numOfItems: 12,
            onPressed: () {},
          ),
          Category(
            title: 'UI/UX Design',
            numOfItems: 8,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
