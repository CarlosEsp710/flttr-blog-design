import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

import '../../../constants/values.dart';

import 'web_menu.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: kDarkBlackColor,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(kDefaultPadding),
              constraints: const BoxConstraints(maxWidth: kMaxWidth),
              child: Column(
                children: [
                  Row(
                    children: <Widget>[
                      SvgPicture.asset('assets/icons/logo.svg'),
                      const Spacer(),
                      WebMenu(),
                      const Spacer(),
                      const _Social(),
                    ],
                  ),
                  const SizedBox(height: kDefaultPadding * 2),
                  const _Info(),
                  const SizedBox(height: kDefaultPadding),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Info extends StatelessWidget {
  const _Info({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Welcome to Our Blog',
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
          child: Text(
            "Stay updated with the newest design and development stories, case studies, \nand insights shared by DesignDK Team.",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              height: 1.5,
            ),
          ),
        ),
        FittedBox(
          child: TextButton(
            onPressed: () {},
            child: Row(
              children: const <Widget>[
                Text(
                  'Learn More',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: kDefaultPadding / 2),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _Social extends StatelessWidget {
  const _Social({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset('assets/icons/behance-alt.svg'),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding / 2,
          ),
          child: SvgPicture.asset('assets/icons/feather_dribbble.svg'),
        ),
        SvgPicture.asset('assets/icons/feather_twitter.svg'),
        const SizedBox(width: kDefaultPadding),
        ElevatedButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding * 1.5,
              vertical: kDefaultPadding,
            ),
          ),
          child: const Text('Let´s Talk'),
        ),
      ],
    );
  }
}
