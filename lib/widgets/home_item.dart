import 'package:flutter/material.dart';
import '../utilities/text_styles.dart';

class HomeItem extends StatelessWidget {
  final String title, subtitle;

  HomeItem(this.title, this.subtitle);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              title,
              style: subHeader,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 5),
                  height: 5,
                  width: 5,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.black54,),
                  child:Text(
                    subtitle,
                    style: descriptionStyle,
                  ),
                ),
                Container(
                  child: Text(
                    subtitle,
                    style: descriptionStyle,
                  ),
                ),
              ],
            ),
          ]),
    );
  }
}
