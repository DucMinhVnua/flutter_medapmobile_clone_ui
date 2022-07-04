import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:medapmobile/pages/community/widgets/body.dart';

import '../../values/app_assets.dart';

class CommunityPage extends StatefulWidget {
  const CommunityPage({Key? key}) : super(key: key);

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Body());
  }
}
