import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medapmobile/pages/detail/info/detail_page.dart';
import 'package:medapmobile/widgets/headerWithAvatarInfo.dart';
import 'package:medapmobile/values/app_assets.dart';
import 'package:medapmobile/values/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.size}) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            HeaderWithAvatarInfo(size: size),
            Column(
              children: [
                BtnWithIconTitleNavigate(iconPath: AppAssets.but, title: 'Thông tin', onPress: () {
                  Navigator.pushNamed(context, DetailInfoPage.routeName);
                }),
                BtnWithIconTitleNavigate(iconPath: AppAssets.user, title: 'Người thân'),
                BtnWithIconTitleNavigate(iconPath: AppAssets.gioiThieu, title: 'Giới thiệu bạn bè'),
                BtnWithIconTitleNavigate(iconPath: AppAssets.hotline, title: 'Hotline'),
                BtnWithIconTitleNavigate(iconPath: AppAssets.khienKhoa, title: 'Chính sách dịch vụ'),
                BtnWithIconTitleNavigate(iconPath: AppAssets.dangXuat, title: 'Đăng xuất'),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class BtnWithIconTitleNavigate extends StatelessWidget {
  const BtnWithIconTitleNavigate({
    Key? key, required this.iconPath, required this.title, this.onPress,
  }) : super(key: key);

  final String iconPath;
  final String title;
  final Function?  onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: defaultPadding * 1.5,left: defaultPadding * 1.5, top: defaultPadding),
      padding: EdgeInsets.symmetric(horizontal: defaultPadding, vertical: defaultPadding/2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color(0xff727499),
        ),
      ),
      child: InkWell(
        onTap: onPress as void Function ()?,
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(defaultPadding/2),
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff5C5F8A).withOpacity(0.2),
                    spreadRadius: 7,
                    blurRadius: 10
                  )
                ],
              ),
              child: SvgPicture.asset(iconPath, width: 10.0, height: 10)
            ),
            SizedBox(width: defaultPadding),
            Text(title, style: TextStyle(
                color: Color(0xff373B6D),
                fontFamily: 'Barlow',
                fontSize: 16
            ),
            ),
            Spacer(),
            SvgPicture.asset(AppAssets.arrowRight, width: 7, height: 12),
          ],
        ),
      ),
    );
  }
}


