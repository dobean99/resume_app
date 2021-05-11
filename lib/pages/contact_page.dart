import 'package:flutter/material.dart';
import '../utilities/text_styles.dart';
import '../widgets/contact_item.dart';
class ContactPage extends StatelessWidget {
  const ContactPage({Key key}) : super(key: key);

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
                'Contact',
                style: header,
              ),
            ),
            ContactItems(Icons.email, "kimdo060599@gmail.com"),
            ContactItems(Icons.web, "https://github.com/DoNgocKimDo"),
            ContactItems(Icons.phone, "0355271228"),
            ContactItems(Icons.location_on, "Thu Duc,Ho Chi Minh"),
          ]),
    );
  }
}
