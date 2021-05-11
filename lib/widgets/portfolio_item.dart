import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utilities/text_styles.dart';
import '../main.dart';

class PortfolioItem extends StatelessWidget {
  final String title;
  final String linkGit;
  final String descriptionText;

  PortfolioItem(this.title, this.linkGit, this.descriptionText);

  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.of(context).size.width;
    var heightScreen = MediaQuery.of(context).size.height;

    return InkWell(
      onTap: () {
        scaffoldKey.currentState.showBottomSheet((context) {
          return Container(
            height: heightScreen - 300,
            width: widthScreen,
            color: Colors.red[200],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Text(  title,
                  style: header,
                )),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Link Github: " + linkGit,
                    style: subHeader,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text("Description: "+
                    descriptionText,
                    style: descriptionStyle,
                  ),
                )
              ],
            ),
          );
        });
      },
      child: Expanded(
        flex: 1,
        child: Container(
          margin: EdgeInsets.all(20),
          height: 100,
          width: 100,
          color: Colors.red[200],
          child: Text(title),
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
