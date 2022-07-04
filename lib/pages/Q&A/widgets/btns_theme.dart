import 'package:flutter/material.dart';
import 'package:medapmobile/values/constants.dart';

class ButtonsTheme extends StatelessWidget {
  const ButtonsTheme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(top: defaultPadding, left: defaultPadding, right: defaultPadding),
        child: Row(
          children: [
            ButtonTheme(text: "Covid-19"),
            ButtonTheme(text: "Mang thai"),
            ButtonTheme(text: "Tiêm chủng mở rộng"),
            ButtonTheme(text: "Ung thư")
          ],
        ),
      ),
    );
  }
}

class ButtonTheme extends StatelessWidget {
  const ButtonTheme({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
          margin: EdgeInsets.only(right: defaultPadding / 2),
          padding: EdgeInsets.symmetric(
              horizontal: defaultPadding, vertical: defaultPadding / 2),
          decoration: BoxDecoration(
              color: Color(0xffEDECEC),
              borderRadius: BorderRadius.circular(15)),
          child: Text(text,
              style: TextStyle(
                  color: Color(0xff366EDF),
                  fontSize: 15,
                  fontFamily: 'Oswald'))),
    );
  }
}
