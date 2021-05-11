import 'package:flutter/material.dart';
import '../utilities/text_styles.dart';
import '../widgets/timeline_item.dart';

class Experience extends StatelessWidget {
  const Experience({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Text(
                'Experience',
                style: header,
              ),
            ),
            TimelineItems('time', 'Ho Chi Minh City Information of Technology'),
            TimelineItems('time', 'description'),
            TimelineItems('time', 'description'),
            TimelineItems('time', 'description'),
            TimelineItems('time', 'description'),
          ]),
    );
  }
}
