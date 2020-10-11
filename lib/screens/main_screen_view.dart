import 'package:flutter/material.dart';
import 'package:flutter_news_app/screens/news_detail_view/news_detail_view.dart';
import 'package:flutter_news_app/screens/news_list_view/news_list_view.dart';

class MainScreenView extends StatelessWidget {
  Widget build(BuildContext context) {
    return PageView(
      children: [
        NewsListView(),
        NewsDeatilview(),
      ],
    );
  }
}
