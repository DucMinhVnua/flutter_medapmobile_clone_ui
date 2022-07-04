import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medapmobile/pages/Q&A/Q&A_page.dart';
import 'package:medapmobile/pages/community/community_page.dart';
import 'package:medapmobile/pages/home/home_page.dart';
import 'package:medapmobile/pages/user_info/user_info_page.dart';
import 'package:medapmobile/values/app_assets.dart';

import '../pages/profile/profile_page.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  int pageIndex = 0;

  final pages = [
    const HomePage(),
    const CommunityPage(),
    const QAPage(),
    const ProfilePage(),
    const UserInfoPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: Container(
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Container(
                  decoration: pageIndex == 0 ?  BoxDecoration(
                      border: Border(
                          top: BorderSide(
                    width: 3,
                    color: Color(0xff438CEB),
                  ))) : null,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        enableFeedback: false,
                        onPressed: () {
                          setState((){
                            pageIndex = 0;
                          });
                        },
                        icon: SvgPicture.asset(
                          AppAssets.trangChu,
                          color: pageIndex == 0 ? Color(0xff438CEB) : Color(0xff868686),
                        ),
                      ),
                      Text("Trang chủ",
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Barlow',
                            color: pageIndex == 0 ? Color(0xff438CEB) : Color(0xff868686),
                          ))
                    ],
                  )),
            ),
            Expanded(
              child: Container(
                  decoration: pageIndex == 1 ?  BoxDecoration(
                      border: Border(
                          top: BorderSide(
                            width: 3,
                            color: Color(0xff438CEB),
                          ))) : null,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        enableFeedback: false,
                        onPressed: () {
                          setState((){
                            pageIndex = 1;
                          });
                        },
                        icon: SvgPicture.asset(
                          AppAssets.congDong,
                          color: pageIndex == 1 ? Color(0xff438CEB) : Color(0xff868686),
                        ),
                      ),
                      Text("Cộng đồng",
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Barlow',
                            color: pageIndex == 1 ? Color(0xff438CEB) : Color(0xff868686),
                          ))
                    ],
                  )),
            ),
            Expanded(
              child: Container(
                  decoration: pageIndex == 2 ?  BoxDecoration(
                      border: Border(
                          top: BorderSide(
                            width: 3,
                            color: Color(0xff438CEB),
                          ))) : null,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        enableFeedback: false,
                        onPressed: () {
                          setState((){
                            pageIndex = 2;
                          });
                        },
                        icon: SvgPicture.asset(
                          AppAssets.hoiDap,
                          color: pageIndex == 2 ? Color(0xff438CEB) : Color(0xff868686),
                        ),
                      ),
                      Text("Hỏi đáp",
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Barlow',
                            color: pageIndex == 2 ? Color(0xff438CEB) : Color(0xff868686),
                          ))
                    ],
                  )),
            ),
            Expanded(
              child: Container(
                  decoration: pageIndex == 3 ?  BoxDecoration(
                      border: Border(
                          top: BorderSide(
                            width: 3,
                            color: Color(0xff438CEB),
                          ))) : null,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        enableFeedback: false,
                        onPressed: () {
                          setState((){
                            pageIndex = 3;
                          });
                        },
                        icon: SvgPicture.asset(
                          AppAssets.hoSo,
                          color: pageIndex == 3 ? Color(0xff438CEB) : Color(0xff868686),
                        ),
                      ),
                      Text("Hồ sơ",
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Barlow',
                            color: pageIndex == 3 ? Color(0xff438CEB) : Color(0xff868686),
                          ))
                    ],
                  )),
            ),
            Expanded(
              child: Container(
                  decoration: pageIndex == 4 ?  BoxDecoration(
                      border: Border(
                          top: BorderSide(
                            width: 3,
                            color: Color(0xff438CEB),
                          ))) : null,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        enableFeedback: false,
                        onPressed: () {
                          setState((){
                            pageIndex = 4;
                          });
                        },
                        icon: SvgPicture.asset(
                          AppAssets.thongTin,
                          color: pageIndex == 4 ? Color(0xff438CEB) : Color(0xff868686),
                        ),
                      ),
                      Text("Thông tin",
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Barlow',
                            color: pageIndex == 4 ? Color(0xff438CEB) : Color(0xff868686),
                          ))
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
