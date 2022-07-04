import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medapmobile/pages/home/widgets/avatarIcon_with_menu.dart';
import 'package:medapmobile/pages/home/widgets/pageview_with_indicator.dart';
import 'package:medapmobile/values/app_assets.dart';
import 'package:medapmobile/pages/home/widgets/home_menu.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int _currentIndex = 1;
  final PageController controller =
      PageController(initialPage: 1, viewportFraction: 0.9);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          AvatarIconWithMenu(),

          PageViewWithIndicator(changeIndex: (int currentIndex) {
            setState(() {
              _currentIndex = currentIndex;
            });
          }),

          //Listview indicator
          Container(
              height: 10,
              margin: EdgeInsets.symmetric(vertical: 20),
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return IndicatorWidget(index == _currentIndex, size);
                },
                shrinkWrap: true,
                itemCount: 4,
              )),

          // y khoa
          Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              margin: EdgeInsets.only(top: 20),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20, left: 20),
                    child: Text('Cẩm nang y khoa',
                        style: TextStyle(
                            fontFamily: "Oswald",
                            fontSize: 14,
                            color: Color(0xff152358))),
                  ),
                  GridView.count(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    crossAxisSpacing: 30,
                    mainAxisSpacing: 20,
                    crossAxisCount: 3,
                    children: <Widget>[
                      MedicalWidget(AppAssets.covid, 'Covid-19'),
                      MedicalWidget(AppAssets.daDay, 'Dạ dày'),
                      MedicalWidget(AppAssets.thanKinh, 'Thần kinh'),
                      MedicalWidget(AppAssets.xuongKhop, 'Xương khớp'),
                      MedicalWidget(AppAssets.nhiKhoa, 'Nhi khoa'),
                      MedicalWidget(AppAssets.phauThuat, 'Phẫu thuật'),
                      MedicalWidget(AppAssets.ungThu, 'Ung thư'),
                      MedicalWidget(AppAssets.quaTim, 'Tim mạch'),
                      MedicalWidget(AppAssets.baCham, 'Tất cả'),
                    ],
                  ),
                ],
              )),

          // suc khoe
          Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              margin: EdgeInsets.only(top: 20),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20, left: 20),
                    child: Text('Tiện ích sức khỏe',
                        style: TextStyle(
                            fontFamily: "Oswald",
                            fontSize: 14,
                            color: Color(0xff152358))),
                  ),
                  GridView.count(
                    childAspectRatio: (30 / 40),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    crossAxisSpacing: 20,
                    crossAxisCount: 5,
                    children: <Widget>[
                      HealthWidget(AppAssets.nhatKy, 'Nhật ký'),
                      HealthWidget(AppAssets.dinhDuong, 'Dinh dưỡng'),
                      HealthWidget(AppAssets.theDuc, 'Thể dục'),
                      HealthWidget(AppAssets.canNang, 'Cân nặng'),
                      HealthWidget(AppAssets.chayBo, 'Chạy bộ'),
                      HealthWidget(AppAssets.boThuoc, 'Bỏ thuốc'),
                      HealthWidget(AppAssets.songXanh, 'Sống xanh'),
                      HealthWidget(AppAssets.nhipTim, 'Nhịp tim'),
                      HealthWidget(AppAssets.chamSocTre, 'Chăm sóc trẻ'),
                      HealthWidget(AppAssets.bonCham, 'xem thêm'),
                    ],
                  ),
                ],
              )),

          // health
          Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 20),
              margin: EdgeInsets.only(top: 20),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Trắc nghiệm sức khỏe',
                            style: TextStyle(
                                fontFamily: "Oswald",
                                fontSize: 14,
                                color: Color(0xff152358))),
                        Image.asset(AppAssets.baCham, width: 14, height: 5)
                      ],
                    ),
                  ),
                  Container(
                    height: 243,
                    width: double.infinity,
                    child: PageView(
                      controller: controller,
                      padEnds: false,
                      children: <Widget>[
                        HealthListRadioWidget(
                            'Khi đang ngồi bạn đứng lên đột ngột sẽ cảm thấy chóng mặt vì sao?',
                            "Do thiếu máu não",
                            "Do virus Covid-19",
                            "Do từ trường trái đất"),
                        HealthListRadioWidget(
                            'Khi đang ngồi bạn đứng lên đột ngột sẽ cảm thấy chóng mặt vì sao?',
                            "Do thiếu máu não",
                            "Do virus Covid-19",
                            "Do từ trường trái đất"),
                        HealthListRadioWidget(
                            'Khi đang ngồi bạn đứng lên đột ngột sẽ cảm thấy chóng mặt vì sao?',
                            "Do thiếu máu não",
                            "Do virus Covid-19",
                            "Do từ trường trái đất"),
                      ],
                    ),
                  ),
                ],
              )),

          // news
          Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 20),
              margin: EdgeInsets.only(top: 20),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text('Tin tức',
                        style: TextStyle(
                            fontFamily: "Oswald",
                            fontSize: 14,
                            color: Color(0xff152358))),
                  ),
                  Container(
                    color: Colors.white,
                    height: 400,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      child: DefaultTabController(
                        length: 5,
                        child: Column(
                          children: <Widget>[
                            ButtonsTabBar(
                              radius: 15,
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 20),
                              backgroundColor: Color(0xff9092AF),
                              unselectedBackgroundColor: Color(0xffEDECEC),
                              unselectedLabelStyle: TextStyle(
                                color: Color(0xff366EDF),
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                              ),
                              labelStyle: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Oswald',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14),
                              tabs: [
                                Tab(
                                  text: "Tin tức",
                                ),
                                Tab(
                                  text: "Covid-19",
                                ),
                                Tab(
                                  text: "Mang thai",
                                ),
                                Tab(
                                  text: "Tiêm chủng mở rộng",
                                ),
                                Tab(
                                  text: "trẻ sơ sinh",
                                ),
                              ],
                            ),
                            Expanded(
                              child: TabBarView(
                                children: <Widget>[
                                  Container(
                                      margin: EdgeInsets.only(top: 10),
                                      child: ListView(
                                        children: [
                                          NewsTabBarView(
                                              'Xét nghiệm nhanh khi nào cần thiết cho bệnh nhân mắc Covid-19 cách ly tại nhà.',
                                              AppAssets.avatarBacSy,
                                              'Nguyễn Huy Hùng',
                                              AppAssets.xetNghiem),
                                          NewsTabBarView(
                                              'Xét nghiệm nhanh khi nào cần thiết cho bệnh nhân mắc Covid-19 cách ly tại nhà.',
                                              AppAssets.avatarBacSy,
                                              'Nguyễn Huy Hùng',
                                              AppAssets.xetNghiem),
                                          NewsTabBarView(
                                              'Xét nghiệm nhanh khi nào cần thiết cho bệnh nhân mắc Covid-19 cách ly tại nhà.',
                                              AppAssets.avatarBacSy,
                                              'Nguyễn Huy Hùng',
                                              AppAssets.xetNghiem),
                                        ],
                                      )),
                                  Center(
                                    child: Icon(Icons.directions_transit),
                                  ),
                                  Center(
                                    child: Icon(Icons.directions_bike),
                                  ),
                                  Center(
                                    child: Icon(Icons.directions_car),
                                  ),
                                  Center(
                                    child: Icon(Icons.directions_transit),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

Widget IndicatorWidget(bool isActive, Size size) {
  return Container(
      margin: const EdgeInsets.only(right: 10),
      width: isActive ? size.width * 1 / 15 : 10,
      height: 8,
      decoration: BoxDecoration(
          color: isActive ? Color(0xff5C5F8A) : Color(0xffD9E4E9),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          boxShadow: [
            BoxShadow(
                color: Colors.black12, offset: Offset(3, 2), blurRadius: 2)
          ]));
}

Widget MedicalWidget(String pathImage, String title) {
  return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Color(0xff9092AF))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(pathImage, fit: BoxFit.contain, width: 44, height: 42),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(title,
                style: TextStyle(
                    color: Color(0xff5C5F8A),
                    fontFamily: "Barlow",
                    fontWeight: FontWeight.w500)),
          )
        ],
      ));
}

Widget HealthWidget(String pathImage, String title) {
  return Container(
      child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Expanded(child: Image.asset(pathImage, fit: BoxFit.contain)),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(title,
              style: TextStyle(
                  color: Color(0xff5C5F8A),
                  fontFamily: "Oswald",
                  fontWeight: FontWeight.w300,
                  fontSize: 10)),
        ),
      )
    ],
  ));
}

Widget HealthListRadioWidget(
    String quizz, String cau1, String cau2, String cau3) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            offset: Offset(3, 2),
            blurRadius: 5,
          )
        ]),
    child: Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(quizz,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    fontFamily: 'Oswald')),
          ),
        ),
        Container(
            child: Column(
          children: [
            RadioListTile(
                dense: true,
                contentPadding: EdgeInsets.zero,
                title: Text(cau1,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        fontFamily: 'Oswald')),
                value: 0,
                groupValue: 0,
                onChanged: (valueNew) {}),
            RadioListTile(
                dense: true,
                contentPadding: EdgeInsets.zero,
                title: Text(cau2,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        fontFamily: 'Oswald')),
                value: 1,
                groupValue: 0,
                onChanged: (valueNew) {}),
            RadioListTile(
                dense: true,
                contentPadding: EdgeInsets.zero,
                title: Text(cau3,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        fontFamily: 'Oswald')),
                value: 1,
                groupValue: 0,
                onChanged: (valueNew) {}),
          ],
        )),
      ],
    ),
  );
}

Widget NewsTabBarView(
    String title, String pathAvatar, String name, String image) {
  return Container(
    margin: EdgeInsets.only(bottom: 20),
    padding: EdgeInsets.only(bottom: 20),
    decoration: BoxDecoration(
        border: Border(
      bottom: BorderSide(width: 1, color: Color(0xffE9E9E9)),
    )),
    child: Row(
      children: [
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: Text(title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontFamily: 'Oswald', fontSize: 16)),
                ),
                Row(
                  children: [
                    Image.asset(pathAvatar, width: 35, height: 35),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: RichText(
                          text: TextSpan(
                              text: "Bác sỹ ",
                              style: TextStyle(
                                  color: Color(0xff838080),
                                  fontFamily: 'Oswald',
                                  fontSize: 15),
                              children: [
                            TextSpan(
                                text: name,
                                style: TextStyle(color: Colors.black))
                          ])),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        )
      ],
    ),
  );
}
