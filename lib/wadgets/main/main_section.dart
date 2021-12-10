import 'package:flutter/material.dart';
import 'package:real_estate_app/wadgets/main/recommendation.dart';
import 'package:real_estate_app/wadgets/main/recommendations.dart';

import '../../screeans/home_screen.dart';
import 'home_banner.dart';
import 'icon_info.dart';
import 'projects.dart';


class MainSection extends StatelessWidget {
  const MainSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeScreen(mainSection: SingleChildScrollView(
      child:Column(
        children: [
          HomeBanner(),
          IconInfo(),
          Projects(),
          Recommendations()
        ],
      ) ,
    ));
  }
}
