import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medapmobile/pages/profile/widgets/body.dart';
import 'package:medapmobile/values/constants.dart';
import 'package:medapmobile/widgets/button_bell.dart';

import '../../values/app_assets.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(size: size),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      toolbarHeight: 100.0,
      elevation: 0,
      backgroundColor: Colors.transparent,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.bannerHeader),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: defaultPadding),
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AppAssets.avatar, width: 45, height: 45),
            ButtonBell(widthButton: 30.0, heightButton: 30.0),
          ],
        ),
      ),
    );
  }
}
