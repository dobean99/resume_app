import 'package:flutter/material.dart';
import '../utilities/text_styles.dart';
class TimelineItems extends StatelessWidget {
  final String time;
  final String description;

  TimelineItems(this.time, this.description);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 5),
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.black54),
              ),
              Text(time,style: subHeader,),

            ],
          ),
          Container(
            height: 100,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(border: Border(left: BorderSide(width: 2,color: Colors.black26)),),
            child: Container(
              margin: EdgeInsets.only(left: 10),
              child: Text(description),
            ) ,
          ),

        ],
      ),
    );
  }
}
