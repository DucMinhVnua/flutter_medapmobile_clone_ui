import 'package:flutter/material.dart';
import 'package:medapmobile/data/comment_data.dart';
import 'package:medapmobile/values/app_assets.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late TextEditingController _controllerPost;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controllerPost = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controllerPost.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            // header avater + textfield
            Padding(
              padding: EdgeInsets.only(top: 30, left: 30, right: 30),
              child: Row(
                children: [
                  Image.asset(
                    AppAssets.avatar,
                    width: 60,
                    height: 60,
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 14),
                      child: TextField(
                        controller: _controllerPost,
                        decoration: InputDecoration(
                            hintText: "Bạn đang nghĩ gì?",
                            hintStyle: TextStyle(
                                color: Color(0xff828282),
                                fontSize: 12,
                                fontFamily: 'Barlow'),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Color(0xffBBBBBB), width: 1.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                              BorderSide(color: Colors.black, width: 1.0),
                            )),
                        onSubmitted: (String value) async {
                          await showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text('Thanks!'),
                                  content: Text(
                                      'You typed "$value", which has length ${value.characters.length}.'),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () {
                                        _controllerPost.clear();
                                        Navigator.pop(context);
                                      },
                                      child: const Text('OK'),
                                    ),
                                  ],
                                );
                              });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // post
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: posts.length,
                    itemBuilder: (context, index) {
                      return Post(posts[index].parent!.name, posts[index].parent!.content, posts[index].childrens);
                    }),
              ),
            )
          ],
        ),
      ),
    );;
  }
}

Widget Comment(String? name, String? content) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      children: [
        Row(
          children: [
            Image.asset(AppAssets.avatar, width: 20, height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(name!,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: "Barlow",
                      fontWeight: FontWeight.w500)),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(content!,
              style: TextStyle(
                  color: Color(0xff727272),
                  fontSize: 12,
                  fontFamily: "Barlow",
                  fontWeight: FontWeight.w500)),
        ),
      ],
    ),
  );
}

Widget Post(String? nameParent, String? contentParent, List? childrenComments) {
  return Container(
    margin: EdgeInsets.only(bottom: 15),
    padding: EdgeInsets.symmetric(vertical: 20),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(color: Color(0xffC6C5C5), width: 1),
        boxShadow: [
          BoxShadow(color: Colors.black12, offset: Offset(3, 4), blurRadius: 5),
        ]),
    child: Column(
      children: [
        Comment(nameParent, contentParent),
        Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 1, color: Color(0xffE1E1E1)),
            ),
          ),
          margin: EdgeInsets.symmetric(horizontal: 20),
          padding: EdgeInsets.only(top: 22.0, bottom: 7),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(AppAssets.ngoiSao, width: 18, height: 18),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text('Thích',
                            style: TextStyle(
                                fontSize: 13,
                                fontFamily: "Barlow",
                                fontWeight: FontWeight.w500)),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(AppAssets.binhLuan, width: 18, height: 18),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text('Thích',
                            style: TextStyle(
                                fontSize: 13,
                                fontFamily: "Barlow",
                                fontWeight: FontWeight.w500)),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              for(int i=0; i< childrenComments!.length; i++)
                Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child:Comment(childrenComments[i].name, childrenComments[i].content)
                ),
            ],
          ),
        )
      ],
    ),
  );
}
