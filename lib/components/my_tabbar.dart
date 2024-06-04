import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_drive/components/build_tab.dart';
import 'package:test_drive/components/Home%20Page/Tab%20Bar/tabbar_search_result.dart';

class MyTabBar extends StatefulWidget {
  const MyTabBar({super.key});

  @override
  State<MyTabBar> createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> {
  var tabNo = 'Business';

  void onTap(String pageNo) {
    setState(() {
      tabNo = pageNo;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: IntrinsicHeight(
              child: Row(
                children: [
                  buildTab(context, 'Business', tabNo, onTap),
                  const SizedBox(width: 15),
                  const SizedBox(width: 15),
                  buildTab(context, 'Entertainment', tabNo, onTap),
                  const SizedBox(width: 15),
                  const SizedBox(width: 15),
                  buildTab(context, 'General', tabNo, onTap),
                  const SizedBox(width: 15),
                  const SizedBox(width: 15),
                  buildTab(context, 'Health', tabNo, onTap),
                  const SizedBox(width: 15),
                  const SizedBox(width: 15),
                  buildTab(context, 'Science', tabNo, onTap),
                  const SizedBox(width: 15),
                  const SizedBox(width: 15),
                  buildTab(context, 'Sports', tabNo, onTap),
                  const SizedBox(width: 15),
                  const SizedBox(width: 15),
                  buildTab(context, 'Technology', tabNo, onTap),
                ],
              ),
            ),
          ),
        ),
        Builder(builder: (context) {
          return TabBarSearchSection(pageName: tabNo);
        }),
      ],
    );
  }
}
