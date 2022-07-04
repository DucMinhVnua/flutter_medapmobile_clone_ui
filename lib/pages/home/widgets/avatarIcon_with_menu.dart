import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medapmobile/pages/home/widgets/home_menu.dart';
import 'package:medapmobile/values/app_assets.dart';
import 'package:medapmobile/widgets/button_bell.dart';

class AvatarIconWithMenu extends StatelessWidget {
  const AvatarIconWithMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          child: Column(
            children: [
              Padding(
                padding:
                EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height:
                        MediaQuery.of(context).size.height * 0.25,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(AppAssets.avatar,
                                width: 58, height: 58),
                            Container(
                              padding:
                              EdgeInsets.symmetric(horizontal: 10),
                              width: 140,
                              child: RichText(
                                text: TextSpan(
                                    text: "MeApp Xin chào, ",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xff152358),
                                        fontFamily: "Oswald"),
                                    children: [
                                      TextSpan(children: [
                                        TextSpan(
                                            text: "Hoàng Thu Hương",
                                            style:
                                            TextStyle(fontSize: 16))
                                      ])
                                    ]),
                              ),
                            )
                          ],
                        ),
                      ),
                      ButtonBell(),
                    ]),
              ),
            ],
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppAssets.bannerHeader),
                fit: BoxFit.cover),
          ),
        ),

        // menu
        homeMenu(),
      ],
    );
  }
}
