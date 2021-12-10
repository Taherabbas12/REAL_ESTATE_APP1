import 'package:flutter/material.dart';
import 'package:real_estate_app/constants.dart';
import 'package:real_estate_app/wadgets/menu/side_menu_section.dart';

import '../responsive.dart';

class  HomeScreen extends StatelessWidget {
  const  HomeScreen({Key? key, required this.mainSection}) : super(key: key);
final Widget mainSection;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)? null :AppBar(
        backgroundColor: kBgColor,
        leading: Builder(
          builder: (context)=>IconButton(
              onPressed: (){
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu)),
        ),
      ),
      drawer: SideMenuSection(),
      body: SafeArea(
        child: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 1440.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if(Responsive.isDesktop(context))
                Expanded(flex: 3,
                  child: SideMenuSection()
                ),
                Expanded(flex: 7,

                  child: mainSection),
              ],
            ),
          ),
        ),
      ),



    );
  }
}
