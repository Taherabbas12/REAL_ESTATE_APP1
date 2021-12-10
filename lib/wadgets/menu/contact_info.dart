import 'package:flutter/material.dart';
import 'package:real_estate_app/constants.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildContactInfo(title: 'Address',text: 'Station Street 5'),
        buildContactInfo(title: 'Country',text: 'Iraq'),
        buildContactInfo(title: 'Email',text: 'taher@gmail.com'),
        buildContactInfo(title: 'Mobile',text: '+964 7826941585'),
        buildContactInfo(title: 'Website',text: 'my@website.com'),

      ],
    );
  }

  Padding buildContactInfo({required String title,required String text}){
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: kDefaultPadding/2,vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,style: TextStyle(color: Colors.white), ),
          Text(text)],


      ),
    );
  }
}
