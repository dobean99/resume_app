import 'package:flutter/material.dart';
import '../utilities/text_styles.dart';
class DescriptionItem extends StatelessWidget {
  final String description;
  DescriptionItem(this.description);
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(right: 5),
          height: 5,
          width: 5,
          decoration: BoxDecoration(
            shape: BoxShape.circle, color: Colors.black54,),
          // child:Text(
          //   subHeader,
          //   style: descriptionStyle,
          // ),
        ),
        Container(
          child: Text(
            description,
            style: descriptionStyle,
          ),
        ),
      ],
    );
  }
}
