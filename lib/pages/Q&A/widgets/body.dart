import 'package:flutter/material.dart';
import 'package:medapmobile/data/question_data.dart';
import 'package:medapmobile/pages/Q&A/widgets/btn_add_question.dart';
import 'package:medapmobile/pages/Q&A/widgets/btns_theme.dart';
import 'package:medapmobile/values/app_assets.dart';
import 'package:medapmobile/values/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.size}) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BtnAddQuestion(),
            ButtonsTheme(),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: defaultPadding, horizontal: defaultPadding),
                child: Column(
                  children: [
                    for(int i=0; i<questions.length; i++) (
                        QuestionCard(index: i)
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class QuestionCard extends StatelessWidget {
  QuestionCard({
    Key? key, required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(AppAssets.avatar, width: 43, height:43),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
              child: Flexible(
                child: Text(questions[index].parent!.content!, style: TextStyle(
                  fontFamily: "Oswald",
                  fontSize: 12,
                ),),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: "Bác sỹ", style: TextStyle(
                    color: Color(0xff838080),
                    fontFamily: "Oswald",
                    fontSize: 10
                  )),
                  TextSpan(text: "\t${questions[index].childrens![0].name}", style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Oswald",
                      fontSize: 10
                  ))
                ]
              ),
            ),
            SizedBox(
              width: defaultPadding/2
            ),
            Image.asset(AppAssets.avatarBacSy, width: 40, height: 40),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: defaultPadding, bottom: defaultPadding),
          child: Text("${questions[index].childrens![0].content}", maxLines: 8, overflow: TextOverflow.ellipsis, style: TextStyle(
            color: Color(0xff626262),
            fontFamily: "Oswald",
            fontSize: 12
          )),
        )
      ],
    );
  }
}


