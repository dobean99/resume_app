import 'package:flutter/material.dart';
import '../utilities/text_styles.dart';
class SubHeaderItem extends StatelessWidget {
  final String title;
  SubHeaderItem(this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        style: subHeader,
      ),
    );
  }
}
