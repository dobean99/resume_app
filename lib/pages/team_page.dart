import 'package:flutter/material.dart';
import '../utilities/text_styles.dart';
class TeamPage extends StatelessWidget {
  const TeamPage({Key key}) : super(key: key);

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
                'Team',
                style: header,
              ),
            ),
          ]),
    );
  }
}
