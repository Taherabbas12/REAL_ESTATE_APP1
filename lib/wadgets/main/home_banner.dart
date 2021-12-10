import 'package:flutter/material.dart';
import 'package:real_estate_app/constants.dart';

import '../../responsive.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.7,
      child: Stack(
        children: [
          Image.asset(
            'assets/images/background.jpg',
            fit: BoxFit.cover,
          ),
          Container(
            color: kDarkColor.withOpacity(0.10),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Build a greate future\n for all of us!',
                  style: Responsive.isDesktop(context)?
                  Theme.of(context).textTheme.headline3!
                      .copyWith(color: Colors.white, fontWeight: FontWeight.bold)
                      : Theme.of(context).textTheme.headline5!
                      .copyWith(color: Colors.white, fontWeight: FontWeight.bold)
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'CONTACT US',
                    style: TextStyle(color: kDarkColor),
                  ),
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          vertical: kDefaultPadding,
                          horizontal: kDefaultPadding * 2)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
