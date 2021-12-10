import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:real_estate_app/constants.dart';
import 'package:real_estate_app/models/projects.dart';

import '../../responsive.dart';
import 'project_card.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Our Projects',
          style: Theme.of(context).textTheme.headline6,
        ),
      Responsive(desktop:   buildGridView(
          itemCount: demoProjects.length,
          childAspectRatio: 0.75,
          crossAxsitCount: 3,
          itemBuilder: (context, index) => ProjectCard(
              project: demoProjects[index])),


          tablet:   buildGridView(
              itemCount: demoProjects.length,
              childAspectRatio: 0.75,
              crossAxsitCount: MediaQuery.of(context).size.width<900?2:  3,
              itemBuilder: (context, index) => ProjectCard(
                  project: demoProjects[index])),


          mobileLarge:   buildGridView(
              itemCount: demoProjects.length,
              childAspectRatio: 0.75,
              crossAxsitCount: 2,
              itemBuilder: (context, index) => ProjectCard(
                  project: demoProjects[index])),


          mobile:   buildGridView(
          itemCount: demoProjects.length,
          childAspectRatio: 0.75,
          crossAxsitCount: 1,
          itemBuilder: (context, index) => ProjectCard(
              project: demoProjects[index])))
      ],
    );
  }
  GridView buildGridView(
  {required int itemCount,
    required int crossAxsitCount,
    required double childAspectRatio,
    required IndexedWidgetBuilder itemBuilder,


}
      ){

    return GridView.builder(
        shrinkWrap: true,
        itemCount: itemCount,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxsitCount,
            childAspectRatio: childAspectRatio,
            crossAxisSpacing: kDefaultPadding,
            mainAxisSpacing: kDefaultPadding),
        itemBuilder: itemBuilder,

    );
  }

}
