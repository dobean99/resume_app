import 'package:flutter/material.dart';
import 'sgv_loader.dart';
import '../utilities/colors.dart';

class NavigationMenu extends StatelessWidget {
  final String img;
  final double width;
  final double height;
  final bool isSelection;
  final Function onClick;

  NavigationMenu(this.img, this.width,this.height, this.onClick,{this.isSelection=false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            SvgLoader(img, width, height),
            Container(
              margin: EdgeInsets.all(10),
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                color:
                    isSelection ? navigationSelectionColor : Colors.transparent,
              ),

            ),
          ],
        ),
      ),
    );
  }
}
