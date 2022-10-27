import 'package:flutter/material.dart';
import 'package:scroll_page_view/pager/page_controller.dart';
import 'package:scroll_page_view/pager/scroll_page_view.dart';

class HomeScreens extends StatelessWidget {
  static const _images = [
    'https://img0.baidu.com/it/u=1653580614,1680935100&fm=26&fmt=auto&gp=0.jpg',
    'https://img2.baidu.com/it/u=3610762567,1537181675&fm=26&fmt=auto&gp=0.jpg',
    'https://img1.baidu.com/it/u=392290897,2018293179&fm=26&fmt=auto&gp=0.jpg',
    'https://img0.baidu.com/it/u=1174472233,2731877603&fm=26&fmt=auto&gp=0.jpg',
  ];
  const HomeScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
      SliverPadding(
      padding: const EdgeInsets.only(bottom: 24),
      sliver: SliverToBoxAdapter(
        child: SizedBox(
          height: 164,
          child: ScrollPageView(
            controller: ScrollPageController(),
            delay: const Duration(seconds: 4),
            indicatorAlign: Alignment.bottomRight,
            indicatorPadding:
            const EdgeInsets.only(bottom: 8, right: 16),
            indicatorWidgetBuilder: _indicatorBuilder,
            children:
            _images.map((image) => _imageView(image)).toList(),
          ),
        ),
      ),


      ),

     ]) ;}
}
Widget? _indicatorBuilder(BuildContext context, int index, int length) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
    decoration: const BoxDecoration(
      color: Colors.deepOrange,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(48),
        topRight: Radius.circular(8),
        bottomRight: Radius.circular(8),
      ),
    ),
    child: RichText(
      text: TextSpan(
        text: '${index + 1}',
        style: const TextStyle(
            fontSize: 12, color: Colors.white, fontWeight: FontWeight.w500),
        children: [
          const TextSpan(
            text: '/',
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
          TextSpan(
            text: '$length',
            style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    ),
  );
}
Widget _imageView(String image) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8),
    child: ClipRRect(
      clipBehavior: Clip.antiAlias,
      borderRadius: BorderRadius.circular(8),
      child: Image.network(image, fit: BoxFit.cover),
    ),
  );
}

