import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../values/app_assets.dart';

Widget homeMenu() {
  return Positioned(
    bottom: -30,
    left: 0,
    right: 0,
    child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Color(0x94a4d0fd),
              offset: Offset(3, 10),
              blurRadius: 9,
              spreadRadius: 5)
        ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Image.asset(AppAssets.doctor, width: 31, height: 30),
                  SizedBox(
                      height: 5
                  ),
                  Text("Khám trực tuyến",
                      style: TextStyle(fontSize: 12, fontFamily: "Oswald"))
                ],
              ),
              Column(
                children: [
                  Image.asset(AppAssets.hospital, width: 31, height: 30),
                  SizedBox(
                      height: 5
                  ),
                  Text("Khám bệnh viện",
                      style: TextStyle(fontSize: 12, fontFamily: "Oswald"))
                ],
              ),
              Column(
                children: [
                  Image.asset(AppAssets.home, width: 31, height: 30),
                  SizedBox(
                      height: 5
                  ),
                  Text("Khám tại nhà",
                      style: TextStyle(fontSize: 12, fontFamily: "Oswald"))
                ],
              ),
              Column(
                children: [
                  Image.asset(AppAssets.medicine, width: 31, height: 30),
                  SizedBox(
                    height: 5
                  ),
                  Text("Mua thuốc",
                      style: TextStyle(fontSize: 12, fontFamily: "Oswald"))
                ],
              ),
            ],
          ),
        )),
  );
}
