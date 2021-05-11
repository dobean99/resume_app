import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgLoader extends StatelessWidget {
  final String img;
  final double width;
  final double height;

  SvgLoader(this.img, this.width, this.height);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(img, width: width, height: height);
  }
}