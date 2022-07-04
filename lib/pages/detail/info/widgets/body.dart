import 'package:flutter/material.dart';
import 'package:medapmobile/helper/convert_password.dart';
import 'package:medapmobile/pages/detail/info/widgets/form_info.dart';
import 'package:medapmobile/values/constants.dart';
import 'package:medapmobile/widgets/headerWithAvatarInfo.dart';

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
            SizedBox(
              height: defaultPadding,
            ),
            FormInfo(
              title: 'Thông tin cá nhân',
              child: Column(
                children: [
                  TextFileTitleWithValue(
                    title: 'Họ và tên',
                    value: 'Nguyễn Hoàng Hải',
                  ),
                  TextFileTitleWithValue(
                    title: 'Email',
                    value: '123@123',
                  ),
                  TextFileTitleWithValue(
                    title: 'Địa phương',
                    value: 'Phú Thọ',
                  ),
                  TextFileTitleWithValue(
                    title: 'Địa chỉ',
                    value: '112 Tân Dân, tp Việt Trì',
                    numberLines: 3,
                  )
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            FormInfo(
              title: 'Thông tin tài khoản',
              child: Column(
                children: [
                  TextFileTitleWithValue(
                    title: 'Số điện thoại',
                    value: 'Nguyễn Hoàng Hải',
                  ),
                  TextFileTitleWithValue(
                    title: 'Password',
                    value: convertPassword(password: '123123'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
          ],
        ),
      ),
    );
  }
}

class TextFileTitleWithValue extends StatelessWidget {
  const TextFileTitleWithValue({
    Key? key,
    required this.title,
    required this.value,
    this.numberLines = 1,
  }) : super(key: key);

  final String title;
  final String value;
  final int numberLines;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultPadding / 2),
      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
      decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Color(0xffBEBFD4),
          ),
          borderRadius: BorderRadius.circular(8)),
      child: TextFormField(
        textInputAction: TextInputAction.next,
        // autofocus: true,
        readOnly: true,
        maxLines: numberLines,
        onChanged: (value) {},
        initialValue: value,
        textAlign: TextAlign.right,
        style:TextStyle(
            color: Color(0xff373B6D),
            fontSize: 17,
            fontWeight: FontWeight.bold,
            fontFamily: 'Barlow') ,
        decoration: InputDecoration(
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          hintStyle: TextStyle(
              color: Color(0xffBEBFD4), fontSize: 16, fontFamily: 'Barlow'),
          prefixText: title,
          prefixStyle: TextStyle(
              color: Color(0xffBEBFD4), fontSize: 16, fontFamily: 'Barlow'),
        ),
      ),
    );
  }
}
