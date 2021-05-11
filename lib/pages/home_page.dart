import 'package:flutter/material.dart';
import '../utilities/text_styles.dart';
import '../widgets/sub_header_item.dart';
import '../widgets/description_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 50),
            child: Text(
              'Information',
              style: header,
            ),
          ),
         SubHeaderItem('Profile'),
          DescriptionItem('Full Name: Do Ngoc Kim Do'),
          DescriptionItem('Day of Birth: 06/05/1999'),
          DescriptionItem('Nationality: VietNamese'),
          SubHeaderItem('Education'),
          DescriptionItem('Computer Science in UIT (2017-2021)'),
          DescriptionItem('Flutter & Dart on Udemy.com'),
          SubHeaderItem('Skills'),
          DescriptionItem(''),
          DescriptionItem(''),
          DescriptionItem(''),
          DescriptionItem(''),
          SubHeaderItem('Hobbies'),
          DescriptionItem(''),
          DescriptionItem(''),
          DescriptionItem(''),
          DescriptionItem(''),
        ],
      ),
    );
  }
}
