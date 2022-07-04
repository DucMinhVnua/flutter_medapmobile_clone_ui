import 'package:flutter/material.dart';
import 'package:medapmobile/pages/detail/info/widgets/body.dart';

class DetailInfoPage extends StatelessWidget {
  const DetailInfoPage({Key? key}) : super(key: key);
  static String routeName = "/profile/info";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Body(size: size),
    );
  }
}
