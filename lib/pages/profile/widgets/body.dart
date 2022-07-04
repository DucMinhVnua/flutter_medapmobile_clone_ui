import 'package:flutter/material.dart';
import 'package:medapmobile/values/constants.dart';

import '../../../values/app_assets.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.size}) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: defaultPadding, left: defaultPadding, right: defaultPadding),
        child: GridView.count(
          childAspectRatio: 4/3.5,
          scrollDirection: Axis.vertical,
          mainAxisSpacing: defaultPadding,
          crossAxisSpacing: defaultPadding,
          crossAxisCount: 3,
          children: [
            Card(
                iconPath: AppAssets.lichKham,
                title: 'Lịch khám',
                colorText: 0xff6BBB2E,
                colorCard: 0xffE1F1D5),
            Card(
                iconPath: AppAssets.khamTaiBV,
                title: 'Lịch sử khám',
                colorText: 0xffFFD80F,
                colorCard: 0xffFFF7CF),
            Card(
                iconPath: AppAssets.kqXetNghiem,
                title: 'KQ Xét nghiệm',
                colorText: 0xff62CEF9,
                colorCard: 0xffE0F5FE),
            Card(
                iconPath: AppAssets.canLamSang,
                title: 'KQ Cận lâm sàng',
                colorText: 0xffF7971E,
                colorCard: 0xffFDEAD2),
            Card(
                iconPath: AppAssets.benhAn,
                title: 'Bệnh án',
                colorText: 0xffABADFF,
                colorCard: 0xffEEEFFF),
            Card(
                iconPath: AppAssets.ketLuanKham,
                title: 'Kết luận khám',
                colorText: 0xff27DEBF,
                colorCard: 0xffD4F8F2),
            Card(
                iconPath: AppAssets.donThuoc,
                title: 'Đơn thuốc',
                colorText: 0xffFB80BA,
                colorCard: 0xffFEE6F1),
          ],
        ));
  }
}

class Card extends StatelessWidget {
  const Card({
    Key? key,
    required this.iconPath,
    required this.title,
    required this.colorText,
    required this.colorCard,
  }) : super(key: key);

  final String iconPath;
  final String title;
  final int colorText;
  final int colorCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(colorCard), borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(iconPath, width: 40, height: 40),
          SizedBox(
            height: 5,
          ),
          Text(title,textAlign: TextAlign.center, style: TextStyle(color: Color(colorText)))
        ],
      ),
    );
  }
}
