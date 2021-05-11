import 'package:flutter/material.dart';
import '../utilities/text_styles.dart';

class ContactItems extends StatelessWidget {
  final IconData iconItem;
  final String title;

  ContactItems(this.iconItem, this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(

            margin: EdgeInsets.only(right: 20),
            child: Icon(iconItem,size: 30,),
          ),
          Text(title,style: descriptionStyle ,),
        ],
      ),
    );
  }
}
