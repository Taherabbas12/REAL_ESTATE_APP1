import 'package:flutter/material.dart';
import 'package:real_estate_app/constants.dart';

class Goals extends StatelessWidget {
  const Goals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all( kDefaultPadding/2 ),
          child: Text('Goals',
          style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        buildGoals( text: 'Planning stage'),
        buildGoals( text: 'Development'),
        buildGoals( text: 'Executon phase'),
        buildGoals( text: 'New way to living'),
        buildGoals( text: 'Gaming go'),
        buildGoals( text: 'Real world'),

      ],
    );
  }
  Padding buildGoals({required String text}){
    return   Padding(
      padding: const EdgeInsets.all( kDefaultPadding/2 ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(Icons.check,color: Colors.blue,),
          SizedBox(width: 10,),
          Text(text)
        ],),
    );
  }
}

