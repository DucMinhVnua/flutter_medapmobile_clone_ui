import 'package:flutter/material.dart';
import 'package:medapmobile/pages/Q&A/widgets/body.dart';
import 'package:medapmobile/values/constants.dart';

class QAPage extends StatelessWidget {
  const QAPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(size),
      body: Body(size: size),
    );
  }

  AppBar buildAppBar(Size size) {
    return AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(
          margin: EdgeInsets.symmetric(horizontal: defaultPadding - 5),
          width: size.width * 0.9,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              width: 1,
              color: Color(0xff366EDF),
            ),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Icon(Icons.search, size: 30, color: Color(0xff9D9D9D)),
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Tìm câu hỏi và trả lời",
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                  onChanged: (value) {},
                ),
              ),
            ],
          ),
        ));
  }
}

// AppBar BuilderAppBar() {
//   return
// }
