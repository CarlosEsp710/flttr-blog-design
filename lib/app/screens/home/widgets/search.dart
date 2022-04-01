import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants/values.dart';

import 'side_bar_container.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SideBarContainer(
      title: 'Search',
      child: TextField(
        onChanged: (value) {},
        decoration: InputDecoration(
          hintText: 'Type here...',
          suffixIcon: SvgPicture.asset(
            'assets/icons/feather_search.svg',
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(kDefaultPadding / 2),
            ),
            borderSide: BorderSide(
              color: Color(0xFFCCCCCC),
            ),
          ),
        ),
      ),
    );
  }
}
