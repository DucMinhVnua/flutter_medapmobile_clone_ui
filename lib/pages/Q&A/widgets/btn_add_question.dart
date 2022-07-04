import 'package:flutter/material.dart';
import 'package:medapmobile/values/app_assets.dart';
import 'package:medapmobile/values/constants.dart';

class BtnAddQuestion extends StatelessWidget {
  const BtnAddQuestion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.only(top: defaultPadding),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Color(0xff366EDF),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppAssets.themCauHoi, width: 32, height: 31),
            Text('\t\tĐặt câu hỏi ngay\t\t', style: TextStyle(
                color: Color(0xffB3B3B3),
                fontFamily: "Oswald",
                fontSize: 14
            )),
          ],
        ),
      ),
    );
  }
}
