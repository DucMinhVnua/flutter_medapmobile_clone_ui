import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medapmobile/values/app_assets.dart';

class ButtonBell extends StatelessWidget {
  const ButtonBell({Key? key, this.widthButton = 35.0, this.heightButton = 35.0}) : super(key: key);

  final double widthButton, heightButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthButton,
      height: heightButton,
      padding: EdgeInsets.symmetric(
          horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Color(0xffD3E8F6),
                spreadRadius: 10)
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(50)),
      child: SvgPicture.asset(
        AppAssets.bell,
        color: Color(0xff152358),
      ),
    );
  }
}

