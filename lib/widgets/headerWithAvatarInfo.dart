import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medapmobile/values/app_assets.dart';

class HeaderWithAvatarInfo extends StatelessWidget {
  const HeaderWithAvatarInfo({Key? key, required this.size}) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.34,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30)),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, 2),
              blurRadius: 10,
            )
          ]),
      child: Stack(
        children: [
          Container(
            height: size.height * 0.17,
            decoration: BoxDecoration(
                color: Color(0xff93D3FB),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
          ),
          AvatarInfo(size: size),
        ],
      ),
    );
  }
}

class AvatarInfo extends StatelessWidget {
  const AvatarInfo({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.8),
                    spreadRadius: 7,
                  ),
                ]),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset(
                  AppAssets.avatar,
                  width: 100,
                  height: 100,
                ),
                Positioned(
                    bottom: 0,
                    right: -3,
                    child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 7, vertical: 7),
                        decoration: BoxDecoration(
                            color: Color(0xff6CBC2F),
                            borderRadius:
                            BorderRadius.circular(50)),
                        child:
                        SvgPicture.asset(AppAssets.mayAnh))),
              ],
            ),
          ),
          SizedBox(height: size.height * 0.02),
          Text('HOÀNG THU HƯƠNG',
              style: TextStyle(
                  fontSize: 24,
                  color: Color(0xff366EDF),
                  fontFamily: 'Barlow')),
          SizedBox(height: size.height * 0.01),
          Text('0904042288',
              style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff366EDF),
                  fontFamily: 'Barlow'))
        ],
      ),
    );
  }
}
