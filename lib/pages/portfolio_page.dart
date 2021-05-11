import 'package:flutter/material.dart';
import '../utilities/text_styles.dart';
import '../utilities/common_strings.dart';
import '../widgets/portfolio_item.dart';
import '../main.dart';
class PortfolioPage extends StatelessWidget {
  const PortfolioPage({Key key}) : super(key: key);

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
                'Portfolio',
                style: header,
              ),
            ),
            Text(descriptionText,style: descriptionStyle,)  ,
            Row(children: <Widget>[
              PortfolioItem('App Shop','https://github.com/DoNgocKimDo/shop_app','This is my app '),
              PortfolioItem('App Shop','Hello','This is my app '),
              //PortfolioItem(),
              //PortfolioItem(),
            ],),
            Row(children: <Widget>[
              PortfolioItem('App Shop','Hello','This is my app '),
              PortfolioItem('App Shop','Hello','This is my app '),
              //PortfolioItem(),
              //PortfolioItem(),
            ],)
          ]),
    );
  }
}
