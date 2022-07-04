import 'package:flutter/material.dart';
import 'package:medapmobile/pages/user_info/widgets/body.dart';

class UserInfoPage extends StatelessWidget {
  const UserInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Body(size: size)
    );
  }
}
