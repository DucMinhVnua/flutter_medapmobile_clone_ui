import 'package:flutter/material.dart';
import 'package:medapmobile/values/constants.dart';

class FormInfo extends StatelessWidget {
  const FormInfo({Key? key, required this.title, required this.child})
      : super(key: key);

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: defaultPadding + 10),
      child: Column(
        children: [TitleWithEdit(title: title), child],
      ),
    );
  }
}

class TitleWithEdit extends StatelessWidget {
  const TitleWithEdit({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: defaultPadding, vertical: defaultPadding / 2),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Color(0xffB1B3D8).withOpacity(0.2)),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: TextStyle(
                  color: Color(0xff152358),
                  fontFamily: 'Barlow',
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
          Text('Edit')
        ],
      ),
    );
  }
}
