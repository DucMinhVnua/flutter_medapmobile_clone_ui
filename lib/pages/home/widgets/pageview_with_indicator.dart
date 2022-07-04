import 'package:flutter/cupertino.dart';
import 'package:medapmobile/values/app_assets.dart';

class PageViewWithIndicator extends StatelessWidget {
  final Function(int index) changeIndex;

  const PageViewWithIndicator({Key? key, required this.changeIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller =
        PageController(initialPage: 1, viewportFraction: 0.9);

    return Container(
      margin: EdgeInsets.only(top: 80),
      height: 115,
      width: double.infinity,
      child: PageView(
        onPageChanged: (index) {
          changeIndex(index);
        },
        controller: controller,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: SizedBox(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(AppAssets.slide, fit: BoxFit.cover))),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
                width: double.infinity,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(AppAssets.slide, fit: BoxFit.cover))),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
                width: double.infinity,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(AppAssets.slide, fit: BoxFit.cover))),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: SizedBox(
                width: double.infinity,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(AppAssets.slide, fit: BoxFit.cover))),
          ),
        ],
      ),
    );
  }
}
